class FeedsController < ApplicationController
  before_action :set_feed, only: [:show, :update, :destroy]

  # GET /feeds
  def index
    # @feeds = Feed.all

    # render json: @feeds
    rss = HTTP.get('https://news.ycombinator.com/rss').to_s
    feed = Feedjira::Feed.parse(rss)
    p feed.entries.first.title
    p feed.entries.first.url
    render json: feed.entries.first.title
  end

  # GET /feeds/1
  def show
    render json: @feed
  end

  # POST /feeds
  def create
    @feed = Feed.new(feed_params)

    if @feed.save
      render json: @feed, status: :created, location: @feed
    else
      render json: @feed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /feeds/1
  def update
    if @feed.update(feed_params)
      render json: @feed
    else
      render json: @feed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /feeds/1
  def destroy
    @feed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed
      @feed = Feed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def feed_params
      params.require(:feed).permit(:title, :link)
    end
end
