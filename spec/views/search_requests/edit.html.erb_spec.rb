require 'rails_helper'

RSpec.describe "search_requests/edit", type: :view do
  before(:each) do
    @search_request = assign(:search_request, SearchRequest.create!(
      :keyword => "MyString"
    ))
  end

  it "renders the edit search_request form" do
    render

    assert_select "form[action=?][method=?]", search_request_path(@search_request), "post" do

      assert_select "input#search_request_keyword[name=?]", "search_request[keyword]"
    end
  end
end
