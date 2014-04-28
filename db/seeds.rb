# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Manufacturer.delete_all
Product.delete_all
ProductDescription.delete_all

manufacturer = Manufacturer.create!(name: "Apple Inc.", image: "apple.png")

# test product #1
product = Product.create!(
  model: "model",
  sku: "sku1",
  mpn: "mpn",
  upc: "upc",
  ean: "ean",
  jan: "jan",
  isbn: "isbn",
  location: "Toronto",
  quantity: 10,
  image: "products/macbookpro-13-retina-select-2013.png",
  price: 1349.00,
  points: 1000,
  date_available: DateTime.now,
  minimum: 1,
  manufacturer_id: manufacturer.id)

ProductDescription.create!(
  product_id: product.id,
  name: "MacBook Pro 13-inch: 2.4GHz with Retina display",
  description: %{<ul>
  <li>2.4GHz dual-core Intel Core i5</li>
  <li>Turbo Boost up to 2.9GHz</li>
  <li>4GB 1600MHz memory</li>
  <li>128GB PCIe-based flash storage1</li>
  <li>Intel Iris Graphics</li>
  <li>Built-in battery (9 hours)</li>
  </ul>},
  meta_description: "MacBook Pro 13-inch: 2.4GHz with Retina display",
  meta_keyword: "MacBook Pro",
  tag: "MacBook Pro")

# test product #2
product = Product.create!(
  model: "model",
  sku: "sku2",
  mpn: "mpn",
  upc: "upc",
  ean: "ean",
  jan: "jan",
  isbn: "isbn",
  location: "Toronto",
  quantity: 20,
  image: "products/macbook-air-11-step1-hero-2013.png",
  price: 999.00,
  points: 1000,
  date_available: DateTime.now,
  minimum: 1,
  manufacturer_id: manufacturer.id)

ProductDescription.create!(
  product_id: product.id,
  name: "MacBook Air 11-inch : 128GB",
  description: %{<ul>
  <li>1.3GHz dual-core Intel Core i5 processor</li>
  <li>Turbo Boost up to 2.6GHz</li>
  <li>Intel HD Graphics 5000</li>
  <li>4GB memory</li>
  <li>128GB flash storage</li>
  </ul>},
  meta_description: "MacBook Air 11-inch : 128GB",
  meta_keyword: "MacBook Air",
  tag: "MacBook Air")

# test product #3
product = Product.create!(
  model: "model",
  sku: "sku3",
  mpn: "mpn",
  upc: "upc",
  ean: "ean",
  jan: "jan",
  isbn: "isbn",
  location: "Toronto",
  quantity: 20,
  image: "products/macbookpro-13-retina-select-2013.png",
  price: 1349.00,
  points: 1000,
  date_available: DateTime.now,
  minimum: 1,
  manufacturer_id: manufacturer.id)

ProductDescription.create!(
  product_id: product.id,
  name: "iMac 27-inch: 3.2GHz",
  description: %{<ul>
  <li>3.2GHz quad-core Intel Core i5</li>
  <li>Turbo Boost up to 3.6GHz</li>
  <li>8GB (two 4GB) memory</li>
  <li>1TB hard drive</li>
  <li>NVIDIA GeForce GT 755M with 1GB video memory</li>
  </ul>},
  meta_description: "iMac",
  meta_keyword: "iMac",
  tag: "Intel i7 Quad-core Processor")