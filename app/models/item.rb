class Item < ApplicationRecord
  belongs_to :warehouse

  validates_presence_of :name
  validates_presence_of :description
end 