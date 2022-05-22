require 'rails_helper'

RSpec.describe 'item show' do
  describe 'when i visit the item show page' do
    before do
      @warehouse = create :warehouse
      @item = create :item ,{ warehouse_id: @warehouse.id }

      visit "/warehouses/#{@warehouse.id}/items/#{@item.id}"
    end

    describe 'display' do
      it 'name of the item' do
        expect(page).to have_content(@item.name)
      end

      it 'item description' do
        expect(page).to have_content(@item.description)
      end

      it 'warehouse/location' do
        expect(page).to have_content(@item.warehouse.location)
      end

      it 'link to edit' do
        click_on 'edit item'
        expect(current_path).to eq(edit_item_path(@item))
      end

      it 'link to delete' do
        click_on 'delete item'
        expect(current_path).to eq(items_path)
        expect(page).to_not have_content(@item.name)
      end 
    end
  end
end