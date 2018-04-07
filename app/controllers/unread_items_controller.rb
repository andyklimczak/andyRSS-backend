class UnreadItemsController < ApplicationController
  def index
    @items =  Item.unread

    render json: @items.order('published_at DESC'), include: [:feed]
  end
end
