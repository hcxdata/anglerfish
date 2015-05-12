require 'rails_helper'

RSpec.describe "search_requests/new", type: :view do
  before(:each) do
    assign(:search_request, SearchRequest.new(
      :keyword => "MyString"
    ))
  end

  it "renders new search_request form" do
    render

    assert_select "form[action=?][method=?]", search_requests_path, "post" do

      assert_select "input#search_request_keyword[name=?]", "search_request[keyword]"
    end
  end
end
