require 'rails_helper'

RSpec.describe 'warehouses index' do
  describe 'list of all warehouses' do
    before do
      @warehouse1 = create :warehouse
      @warehouse2 = create :warehouse
      visit '/warehouses'
    end

    describe 'display' do
      it 'each warehouse by location' do
        within("#warehouse-#{@warehouse1.id}") do
          expect(page).to have_content(@warehouse1.location)
        end
        within("#warehouse-#{@warehouse2.id}") do
          expect(page).to have_content(@warehouse2.location)
        end
        expect(Warehouse.all.count).to eq 2
      end

      it 'each warehouse is a link to its show page' do
        click_on @warehouse1.location
        expect(current_path).to eq("/warehouses/#{@warehouse1.id}")
      end
    end
  end
end