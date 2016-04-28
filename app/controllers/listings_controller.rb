class ListingsController < ApplicationController

  def new
    @listing = Listing.new
  end

  def create
    listing = Listing.new
    listing.title = params[:listing][:title]
    listing.shop_id = params[:listing][:shop_id]
    listing.price = params[:listing][:price].to_f * 100
    listing.image_url = params[:listing][:image_url]
    listing.num_favorites = 0
    listing.save

    redirect_to "/listings"
  end

  def edit
    @listing = Listing.find_by(id: params[:id])
  end

  def update
    listing = Listing.find_by(id: params[:id])
    listing.title = params[:listing][:title]
    listing.shop_id = params[:listing][:shop_id]
    listing.price = params[:listing][:price].to_f * 100
    listing.image_url = params[:listing][:image_url]
    listing.num_favorites = params[:listing][:num_favorites]
    listing.save

    redirect_to "/listings/#{listing.id}"
  end

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find_by(id: params[:id])
    if @listing == nil
      redirect_to "/"
    end
  end

  def destroy
    listing = Listing.find_by(id: params[:id])
    listing.delete

    redirect_to "/listings"
  end
end
