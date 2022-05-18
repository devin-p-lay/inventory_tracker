require 'rails_helper'

RSpec.describe 'new warehouse' do
  before do
    @warehouse = create :warehouse
    visit '/warehouses/new'
  end

  describe 'form to create new warehouse' do
    it 'when i fill in attributes and click submit, i am taken to warehouse index where i see my new warehouse' do
      expect(Warehouse.count).to eq(1)

      fill_in 'Location', with: 'Flagstaff, AZ'
      click_on 'Create Warehouse'

      expect(current_path).to eq('/warehouses')
      expect(Warehouse.count).to eq(2)
      expect(page).to have_content('Flagstaff, AZ')
    end
  end
end