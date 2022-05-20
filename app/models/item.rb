class Item < ApplicationRecord
  belongs_to :warehouse

  validates_presence_of :name
  validates_presence_of :description

  def self.next_id
    if Item.last.nil?
      1
    else
      Item.last.id + 1
    end 
  end
end