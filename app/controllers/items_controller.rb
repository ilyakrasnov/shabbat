class ItemsController < ApplicationController
  respond_to :html, :json
  def index
   @items = Item.all
  end

  def show
    @item = Item.find params[:id]
  end

  def destroy
    @item = Item.find item_params[:id]
    @item.destroy
  end

  def edit
    @item = Item.find item_params[:id]
  end

  def new
    @item = Item.new
  end

  def update
    @item = Item.find params[:id]
    @item.update_attributes(item_params)
    respond_with @item
  end

  def item_params
    params.require(:item).permit(:responsible, :id)
  end
end
