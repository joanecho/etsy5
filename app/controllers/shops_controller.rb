class ShopsController < ApplicationController

  def index
    @shops = Shop.all.order('name')
  end

  def show
    @shop = Shop.find_by(id: params[:id])
  end
  
end
