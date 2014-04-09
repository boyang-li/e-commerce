class Manufacturer < ActiveRecord::Base
  has_many :products

  attr_accessor :name, :image

  validates :name, :image, presence: :true

  validates :image, allow_blank: :true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: "must be an url for GIF, JPG or PNG image."
  }
end
