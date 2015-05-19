# == Schema Information
#
# Table name: search_requests
#
#  id             :integer          not null, primary key
#  keyword        :string
#  crawl_start_at :datetime
#  crawl_end_at   :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  status         :string           default("pending")
#

class SearchRequest < ActiveRecord::Base
  has_many :results, class_name: SearchResult, foreign_key: "request_id"
  symbolize :status, in: [:pending, :crawled], methods: true, default: :pending
  validates :keyword, presence: true
end
