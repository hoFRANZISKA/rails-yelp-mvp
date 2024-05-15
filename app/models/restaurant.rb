class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  @allowed_categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates_inclusion_of :category, in: @allowed_categories
  has_many :reviews, dependent: :destroy
end
