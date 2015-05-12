require 'rails_helper'

RSpec.describe "search_requests/index", type: :view do
  before(:each) do
    assign(:search_requests, [
      SearchRequest.create!(
        :keyword => "Keyword"
      ),
      SearchRequest.create!(
        :keyword => "Keyword"
      )
    ])
  end

  it "renders a list of search_requests" do
    render
    assert_select "tr>td", :text => "Keyword".to_s, :count => 2
  end
end
