# == Schema Information
#
# Table name: search_results
#
#  id          :integer          not null, primary key
#  request_id  :integer
#  title       :string
#  description :string
#  url         :string
#  keyword     :string
#  engine      :string
#  crawl_at    :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class SearchResult < ActiveRecord::Base
  belongs_to :search_request, class_name: SearchRequest, foreign_key: "request_id"

  def sync!(data)
    self.attributes = data.slice("keyword", "engine", "crawl_at", "url", "title", "description")
    save!
  end
end
