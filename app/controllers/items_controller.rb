class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end