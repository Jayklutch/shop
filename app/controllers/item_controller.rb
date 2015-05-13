class ItemController < ApplicationController
  def index
    @items=Item.all
  end

  def add
    @product=Item.new(params.require(:item).permit(:name,:price))
@product.save
  end

  def edit
    @items=Item.all
  end

  def delete
    @items=Item.all
  end


end
