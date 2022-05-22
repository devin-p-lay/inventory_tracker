require 'rails_helper'

RSpec.describe 'Edit an Item' do
  describe 'when I visit an Edit Item Page' do
    before do
      @warehouse = create :warehouse
      @item = create :item, { warehouse_id: @warehouse.id }

      visit "/items/#{@item.id}/edit"
    end

    it 'display form with pre-populated fields' do

    end

    describe 'when i fill out the form successfully' do
      it 'item updates' do
        fill_in :name, with: 'Item for Testing'
        fill_in :description, with: 'This is just a test'
        click_on 'Submit changes'
        expect(current_path).to eq("/items/#{@item.id}")
        expect(page).to have_content('Item for Testing')
        expect(page).to have_content('This is just a test')
      end
    end
  end
end