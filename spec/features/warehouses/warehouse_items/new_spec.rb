require 'rails_helper'

RSpec.describe 'new item' do
  before do
    @warehouse = create :warehouse
    @item = create :item ,{ warehouse_id: @warehouse.id }
    visit "/warehouses/#{@warehouse.id}/items/new"
  end

  describe 'form to create new warehouse' do
    it 'when i fill in attributes and click submit, i am taken to items index where i see my new item' do
      expect(Item.count).to eq(1)

      fill_in 'Name', with: 'Thinga-Majig'
      fill_in 'Description', with: 'Does the thing'
      click_on 'Create New Item'

      expect(current_path).to eq("/warehouses/#{@warehouse.id}/items")
      expect(@warehouse.items.count).to eq(2)
      expect(page).to have_content('Thinga-Majig')
    end
  end
end