json.array!(@search_requests) do |search_request|
  json.extract! search_request, :id, :keyword, :crawl_start_at, :crawl_end_at
  json.url search_request_url(search_request, format: :json)
end
