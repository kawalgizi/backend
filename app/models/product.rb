class Product < ApplicationRecord
  belongs_to :brand
  has_many :compositions
  accepts_nested_attributes_for :brand
  accepts_nested_attributes_for :compositions

  validates :name, presence: true
end
