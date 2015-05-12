class SearchRequestsController < ApplicationController
  before_action :set_search_request, only: [:show, :edit, :update, :destroy]

  # GET /search_requests
  # GET /search_requests.json
  def index
    @search_requests = SearchRequest.all
  end

  # GET /search_requests/1
  # GET /search_requests/1.json
  def show
  end

  # GET /search_requests/new
  def new
    @search_request = SearchRequest.new
  end

  # GET /search_requests/1/edit
  def edit
  end

  # POST /search_requests
  # POST /search_requests.json
  def create
    @search_request = SearchRequest.new(search_request_params)

    respond_to do |format|
      if @search_request.save
        format.html { redirect_to search_requests_url, notice: 'Search request was successfully created.' }
        format.json { render :show, status: :created, location: @search_request }
      else
        format.html { render :new }
        format.json { render json: @search_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_requests/1
  # PATCH/PUT /search_requests/1.json
  def update
    respond_to do |format|
      if @search_request.update(search_request_params)
        format.html { redirect_to @search_request, notice: 'Search request was successfully updated.' }
        format.json { render :show, status: :ok, location: @search_request }
      else
        format.html { render :edit }
        format.json { render json: @search_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_requests/1
  # DELETE /search_requests/1.json
  def destroy
    @search_request.destroy
    respond_to do |format|
      format.html { redirect_to search_requests_url, notice: 'Search request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_request
      @search_request = SearchRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_request_params
      params.require(:search_request).permit(:keyword, :crawl_start_at, :crawl_end_at)
    end
end
