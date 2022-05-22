class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @warehouse = Warehouse.find(params[:warehouse_id])
  end

  def create
    @warehouse = Warehouse.find(params[:warehouse_id])
    item = Item.new(item_params.merge({ id: Item.next_id, warehouse_id: params[:warehouse_id] }))
    redirect_to warehouse_items_path(@warehouse) if item.save
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to(item_path(@item))
  end

  def destroy
  end

  private

  def item_params
    params.permit(:name, :description)
  end
end