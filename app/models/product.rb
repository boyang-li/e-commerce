class Product < ActiveRecord::Base
	has_one :product_description
	has_many :product_images
	has_many :reviews
	has_many :product_attributes
	has_many :general_attributes, through: :product_attributes
	has_many :categorizations
	has_many :categories, through: :categorizations
	belongs_to :manufacturer
	has_many :line_items

	before_destroy :ensure_not_referenced_by_any_line_item

	validates :model, :sku, :mpn, :upc, :ean, :jan, :isbn, :location, :quantity, :image, :shipping,
	  :price, :points, :date_available, :minimum, :status, :viewed, presence: :ture
	validates :sku, uniqueness: :true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :image, allow_blank: :true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: "must be an url for GIF, JPG or PNG image."
	}

	def self.latest
		Product.order(:updated_at).last
	end

	private

		# ensure that there are no line items referencing this product
		def ensure_not_referenced_by_any_line_item
			if line_items.empty?
				return true
			else
				errors.add(:base, 'Line Items present')
				return false
			end		
		end
end
