class ListingsController < ApplicationController
  before_filter :authenticate_user!,only: [:new , :create]
  before_filter :is_user?,only: [:edit , :update, :delete]
  def index
    @listings=Listing.all

  end
  def new
    @listing= Listing.new
  end
  def create
    @listing=Listing.new(listing_params)
    if @listing.save
      flash[:success] = "Your is successfully   save "
      redirect_to listing_path(@listing)
    else
      render 'new'
    end

  end

  def show
    @listing= Listing.find(params[:id])
  end
  def destroy
    @listing= Listing.find(params[:id])
    @listing.destroy
    flash[:danger] = 'Service delete'
    redirect_to listings_path
  end
  def edit
    @listing= Listing.find(params[:id])
  end
  def update
    @listing= Listing.find(params[:id])
    if @listing.update(listing_params)
      flash[:success] = 'Your service was successfully updated'
      redirect_to listing_path(@listing)
    else
      render 'edit'
    end

  end

  private
  def set_listing
    @listing=listing.find(params[:id])
  end
  def listing_params
    params.require(:listing).permit(:title,:description,:city,:contact,:address,:price,:category_id, :subcategory_id)
  end


  def is_user?
    @listing=Listing.find(params[:id])
    unless current_user=@listing.user
      redirect_to root_path, alert:'Sorry ,you are not the owner of the service'
    end

  end
  end