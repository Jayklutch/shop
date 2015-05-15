class ItemController < ApplicationController

  def index
    @items=Item.all
  end

def add
  @items=Item.all
end

def create
  #@new=Item.create!(params)
  puts "YO OVER HERE _______________________________________________________________"
  puts params[:new][:name]

  @new = Item.create!(:name => params[:new][:name], :price=>params[:new][:price])
 redirect_to :action => 'add'
end

  def delete
    puts "_______________DELETING THIS STUFF ____________________________________________"

    puts params
    puts "and this is our id thingy"
    puts params[:format]
    @vanish=Item.find_by name: (params[:format])
  @vanish.destroy!
  redirect_to :action=>'add'
  end


end
