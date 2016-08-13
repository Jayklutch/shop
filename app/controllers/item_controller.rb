class ItemController < ApplicationController

  def index
    @items=Item.all
  end

def add
  @items=Item.all
end

def create
  @new = Item.create!(:name => params[:new][:name], :quantity=>params[:new][:quantity], :description=>params[:new][:description])
 redirect_to :action => 'add'
end

def fix
  @fix=Item.find_by description: (params[:format])
  @fix.ordered=true
  @fix.save!
redirect_to :action =>'add'
end

  def delete
    @vanish=Item.find_by description: (params[:format])
  @vanish.destroy!
  redirect_to :action=>'add'
  end


end
