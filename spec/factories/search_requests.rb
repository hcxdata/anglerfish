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

FactoryGirl.define do
  factory :search_request do
    keyword "MyString"
    crawl_start_at "2015-05-09 15:02:02"
    crawl_end_at "2015-05-09 15:02:02"
  end

end
