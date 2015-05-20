require "rails_helper"
require "webmock/rspec"

RSpec.describe HtmlCrawlWorker, type: :worker do
  describe "#perform", :vcr do
    let(:result){ create :search_result, url: "http://www.baidu.com/link?url=oJwHkkWKKpTWk-9uj-vf0mT97n5EGGHRC0LW7gzYUPsePSn2Fng9-hxdGuwUkpT_", keyword: "helloword" }
    let(:benchtech) { stub_request(:post, /http:\/\/news.jetyun.com:18080\/push_datas\/baidu.*/).
        with(:body => /.*/, :headers => {'Accept'=>'*/*', 'Content-Type'=>'application/json', 'User-Agent'=>'Faraday v0.9.1'}) }

    context "with success responese" do
      before(:each) do
        benchtech.to_return(status: 200, body: "", headers: {})
      end
      it {
        expect{subject.perform(result.id)}.not_to raise_error
        expect(WebMock).to have_requested(:post, "http://news.jetyun.com:18080/push_datas/baidu").with( headers: {'Content-Type' => 'application/json'})
      }
    end

    context "with failed responese" do
      before(:each) do
        benchtech.to_return(status: 400, body: "", headers: {})
      end
      it { expect{subject.perform(result.id)}.to raise_error }
    end

  end
end
