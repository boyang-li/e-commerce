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

	def initialize(attributes = {})
		attributes.each do |k, v|
			send("#{k}=", v)	
		end
	end
end
