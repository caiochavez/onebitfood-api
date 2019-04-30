class Category < ApplicationRecord
  has_many :restaurants
  validades :title, presence: true
  has_one_attached :image
end
