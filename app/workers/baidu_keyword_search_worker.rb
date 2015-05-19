class BaiduKeywordSearchWorker
  include Sidekiq::Worker

  def perform(search_request_id)
    return unless search_request_id
    page_num = 2
    search_request =  SearchRequest.find_by(id: search_request_id)
    return unless search_request

    datas = parser_search_content "http://www.baidu.com/s?ie=utf-8&f=3&rsv_bp=0&rsv_idx=1&tn=baidu&wd=#{URI.escape(search_request.keyword)}", search_request.keyword, true
    
    if datas["page_links"]
      page_num = datas["page_links"].length if datas["page_links"].length < page_num
      i = 0
      for i in 0..(page_num-2) do
        other_page = parser_search_content "http://www.baidu.com#{datas["page_links"][i]}", search_request.keyword
        datas["search_content"] += other_page["search_content"] if other_page && other_page["search_content"]
      end
    end

    datas["search_content"].each do |data|
      search_result = search_request.results.new
      search_result.sync! data
    end

    search_request.status = "crawled"
    search_request.save!
    puts search_request.to_json
  end

  def parser_search_content(search_url, wd, pl = false)
    datas = Wombat.crawl do
      base_url search_url
      search_content "css=div[class*='result c-containe']", :iterator do
        keyword "#{wd}"
        engine "baidu"
        crawl_at "#{Time.now}"
        url({ xpath: ".//a[1]/@href" })
        title  "xpath=./h3/a"
        description  "xpath=.//div[@class='c-abstract']"
      end
      page_links "xpath=//div[@id='page']/a/span[@class='pc']/../@href", :list if pl
    end
    datas
  end
end