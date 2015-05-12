class ItemController < ApplicationController
  def index
    @items=Item.all
  end

  def add
    @items=Item.all
  end

  def edit
    @items=Item.all
  end

  def delete
    @items=Item.all
  end

  
end
