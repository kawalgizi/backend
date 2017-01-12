class Product < ApplicationRecord
  belongs_to :brand
  has_many :compositions
  has_many :nutrition_facts
  accepts_nested_attributes_for :brand, :compositions, :nutrition_facts, allow_destroy: true

  validates :name, presence: true
end
