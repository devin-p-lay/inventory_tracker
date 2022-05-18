require 'rails_helper'

RSpec.describe 'warehouse show' do
  describe 'when I visit the warehouse show page' do
    before do
    @warehouse1 = create :warehouse
    @item1 = create :item, { warehouse_id: @warehouse1.id }
    @item2 = create :item, { warehouse_id: @warehouse1.id }
    @warehouse_decoy = create :warehouse
    @item_decoy = create :item, { warehouse_id: @warehouse_decoy.id }

    visit "/warehouses/#{@warehouse1.id}"
    end

    describe 'display' do
      it 'warehouse location' do
        expect(page).to have_content("#{@warehouse1.location} Warehouse")
      end

      it 'list of inventory items for this warehouse' do
        within("#inventory_items") do
          expect(page).to have_content('Inventory Items:')
          expect(page).to have_content(@item1.name)
          expect(page).to have_content(@item2.name)
          expect(page).to_not have_content(@item_decoy.name)
        end
      end
    end
  end
end