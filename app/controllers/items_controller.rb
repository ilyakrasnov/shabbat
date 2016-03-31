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
    if @item.update_attributes(item_params)
      redirect_to :action => 'show', :id => @item.id
    end
  end

  def item_params
    params.require(:item).permit(:responsible, :id)
  end
end
