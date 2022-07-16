class Product < ApplicationRecord
    has_one_attached :image

    has_many :orderables
    has_many :carts, through: :orderables

  validates :name, :stock, :sku, :size, :brand, presence: true
  validates :price, length: { maximum: 7 }

  BRAND = %w{ Alaniz Dockers Alicia Shabby }
  COLOR = %w{ Blanco Negro Azul Piel  }
  SIZE = %w{ s-small small medium large x-large }

end
