class FavoriteItemsController < ApplicationController
  def index
    @items =  Item.favorite

    render json: @items.order('published_at DESC'), include: [:feed]
  end
end
