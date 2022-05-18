require 'rails_helper'

RSpec.describe 'items index' do
  before do
    @warehouse1 = create :warehouse
    @warehouse2 = create :warehouse
    @item1 = create :item ,{ warehouse_id: @warehouse1.id }
    @item2 = create :item ,{ warehouse_id: @warehouse1.id }
    @item3 = create :item ,{ warehouse_id: @warehouse2.id }

    visit '/items'
  end

  describe 'display' do
    describe 'items' do
      it 'name of every item' do
        within("#item-#{@item1.id}") do
          expect(page).to have_content(@item1.name)
        end
        within("#item-#{@item2.id}") do
          expect(page).to have_content(@item2.name)
        end
        within("#item-#{@item3.id}") do
          expect(page).to have_content(@item3.name)
        end
      end

      it 'name is a link to its show page' do
        click_on @item1.name
        expect(current_path).to eq warehouse_item_path(@item1.warehouse, @item1)
      end
    end
  end
end