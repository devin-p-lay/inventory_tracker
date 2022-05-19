class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def show
    @warehouse = Warehouse.find(params[:id])
  end

  def new
  end

  def create
    warehouse = Warehouse.new(warehouse_params)
    redirect_to warehouses_path if warehouse.save
  end

  private

  def warehouse_params
    params.permit(:location)
  end 
end