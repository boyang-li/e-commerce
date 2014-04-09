# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Manufacturer.delete_all
manufacturer = Manufacturer.create!(:name=> "Intel", :image=> "image.jpg")

Product.delete_all
product = Product.create!(model: "i7-4770K", sku: "sku", mpn: "mpn", upc: "upc", ean: "ean", jan: "jan", isbn: "isbn", location: "Toronto", quantity: 20, image: "image.jpg", 
   price: 369.0, points: 100, date_available: DateTime.now, minimum: 1, manufacturer_id: manufacturer.id)

ProductDescription.delete_all
ProductDescription.create!(product_id: product.id, name: "Intel Core i7-4770K Quad-Core Processor", description: "Core i7 Quad-core i7-4770K 3.5GHz Desktop Processor",
  meta_description: "Intel i7 Quad-core Processor", meta_keyword: "Intel i7 Quad-core Processor", tag: "Intel i7 Quad-core Processor")