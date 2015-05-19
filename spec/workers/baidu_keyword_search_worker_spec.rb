require "rails_helper"

RSpec.describe BaiduKeywordSearchWorker, type: :worker do
  describe "#perform", :vcr do
    let(:request){ create :search_request, keyword: "helloword" }
    before(:each){ subject.perform(request.id) }

    context "with success responese" do
      it {expect(request.results.count).to eq 16}
    end

  end
end
