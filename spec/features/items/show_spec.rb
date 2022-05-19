require 'rails_helper'

RSpec.describe 'item show' do
  describe 'when i visit the item show page' do
    before do
      @warehouse = create :warehouse
      @item = create :item ,{ warehouse_id: @warehouse.id }

      visit "/warehouses/#{@warehouse.id}/items/#{@item.id}"
    end

    describe 'display' do
      xit 'name of the item' do
        expect(page).to have_content(@item.name)
      end

      xit 'item description' do
        expect(page).to have_content(@item.description)
      end

      xit 'warehouse/location' do
        expect(page).to have_content(@item.warehouse.location)
      end
    end
  end
end