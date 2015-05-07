class ItemController < ApplicationController
  def index
    @items=Item.all
  x=Item.new(:name=>'Nissan Leaf', :price=>30000)
  x.save!
  @items<<x
end
end
