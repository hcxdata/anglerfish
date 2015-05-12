require 'rails_helper'

RSpec.describe "search_requests/show", type: :view do
  before(:each) do
    @search_request = assign(:search_request, SearchRequest.create!(
      :keyword => "Keyword"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Keyword/)
  end
end
