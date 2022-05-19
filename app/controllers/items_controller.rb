class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end