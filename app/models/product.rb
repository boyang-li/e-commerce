class Product < ActiveRecord::Base
	attr_accessor :title,
		:description,
		:active,
		:min,
		:max,
		:start_time,
		:end_time,
		:expire_on,
		:regular_price,
		:actual_price,
		:product_fee,
		:currency,
		:image_url,
		:require_shipping,
		:categories_id

	validates: :title, :description, :min, :max, :start_time, :end_time, :expire_on, :regular_price, 
		:actual_price, :product_fee, :image_url, presence: :ture
	validates: :regular_price, :actual_price, :product_fee, numerically: {greater_than_or_equal_to: 0.01}
	validates: :title, uniqueness: :true
	validates: :image_url, allow_blank: :true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: "must be an url for GIF, JPG or PNG image."
	}

	def initialize(attributes = {})
		attributes.each do |k, v|
			send("#{k}=", v)	
		end
	end
end
