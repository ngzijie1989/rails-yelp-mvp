class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, 
            inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], message: "%{value} is not a valid category" }
  validates :phone_number, presence: true
end

# validates :username, presence: true, length: { minimum: 3, maximum: 20 }, uniqueness: true