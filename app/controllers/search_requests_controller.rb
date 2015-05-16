class SearchRequestsController < ApplicationController
  respond_to :html, :json

  def index
    @search_requests = SearchRequest.all
  end

  def new
    @search_request = SearchRequest.new
  end

  def create
    @search_request = SearchRequest.new(search_request_params)
    @search_request.save
    respond_with @search_request, location: -> { search_requests_path }
  end

  def destroy
    @search_request = SearchRequest.find(params[:id])
    @search_request.destroy
    respond_with @search_request, location: -> { search_requests_path }
  end

  private
    def search_request_params
      attribute_names = [ :keyword, :crawl_start_at, :crawl_end_at ]
      if param[:search_request]
         param[:search_request].permit(attribute_names)
      else
         params.permit(attribute_names)
      end
    end
end
