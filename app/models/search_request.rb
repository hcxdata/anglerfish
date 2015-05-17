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
#

class SearchRequest < ActiveRecord::Base
  has_many :search_results, class_name: SearchResult, foreign_key: "request_id"
  validates :keyword, presence: true
end
