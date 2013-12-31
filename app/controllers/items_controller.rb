class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def index
    @items = Item.all
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, notice: 'Item was successfully added.'
    else
      render 'new'
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :quantity)
  end
end
