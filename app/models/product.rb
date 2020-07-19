class Product < ApplicationRecord
  validates :title, :content, presence: true
  validates :title, length: { in: 5..20 }
end
