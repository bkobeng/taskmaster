class CategoriesController < ApplicationController
  def index
    @categories = Category .all
    @house = @categories[1]
    @errands = @categories[2]
    @care = @categories[3]
    @writing = @categories[4]
    @graphic = @categories[5]
    @music = @categories[6]
    @style = @categories[7]
  end

  def show
    @listings=Listing.where(category_id: params[:id])
  end

end