require 'rails_helper'

RSpec.describe Item do
  describe 'relationships' do
    it { should belong_to :warehouse }
  end

  describe 'validations' do
    it { validate_presence_of :name }
    it { validate_presence_of :description }
  end 
end