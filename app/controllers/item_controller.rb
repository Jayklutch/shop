class ItemController < ApplicationController

  def index
    @items=Item.all
  end

def add
  @items=Item.all
end

def create
  @new = Item.create!(:name => params[:new][:name], :price=>params[:new][:price], :description=>params[:new][:description])
 redirect_to :action => 'add'
end

  def delete
    @vanish=Item.find_by name: (params[:format])
  @vanish.destroy!
  redirect_to :action=>'add'
  end


end
