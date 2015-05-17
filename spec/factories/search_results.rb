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

FactoryGirl.define do
  factory :search_result do
    
  end

end
