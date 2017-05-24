# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#change first product name to Patti the Platypus, price to 145 image place new url description

# product = Product.new(name: "Squealer the Pig", price: 225, image: "http://www.tycollector.com/beanies/bb-images/squealer-bboc-2.jpg", description: "I'm a pig! You can call me Chris P. Bacon.")
# product.save

# product = Product.new(name: "Chocolate the Moose", price: 175, image: "http://www.tycollector.com/beanies/bb-images/chocolate-bboc-2.jpg", description: "I'm a moose! And I don't find my name a'moose'ing!")
# product.save

# product = Product.new(name: "Punchers the Lobster", price: 75, image: "https://hobbydb-production.s3.amazonaws.com/processed_uploads/catalog_item_photo/catalog_item_photo/image/451896/Punchers_The_Lobster_Plush_Toys_df04dc46-c43a-4beb-bc98-dffb7ae5a60a_medium.JPG", description: "Hey there, I'm a Lobster. But that might be a little lobvious.")
# product.save

# product = Product.new(name: "Spot the Dog", price: 250, image: "https://www.bestdressedkids.com/imagescache/spot_lg.jpg", description: "I may be a dog, but life can still be...ruff.")
# product.save

# product = Product.new(name: "Brownie the Bear", price: 150, image: "http://www.tycollector.com/beanies/bb-images/brownie-bboc-2.jpg", description: "Ya, I'm a bear, you better bear-lieve it!")
# product.save

# product = Product.new(name: "Splash the Orca Whale", price: 200, image: "https://images-na.ssl-images-amazon.com/images/I/41jXAfoSaDL._SX355_.jpg", description: "Whale, whale, whale, what have we here?")
# product.save

# product = Product.new(name: "Legs the Frog", price: 100, image: "https://www.coololdstuffforsale.com/photos/BeanieLegsFrog.jpg", description: "Hey now, don't forgit to Kermit!")
# product.save

# Image.create!([
#               {url: "http://www.tycollector.com/beanies/bb-images/squealer-bboc-2.jpg", product_id: 1},
#               {url: "http://www.tycollector.com/beanies/bb-images/chocolate-bboc-2.jpg", product_id: 2},
#               {url: "https://hobbydb-production.s3.amazonaws.com/processed_uploads/catalog_item_photo/catalog_item_photo/image/451896/Punchers_The_Lobster_Plush_Toys_df04dc46-c43a-4beb-bc98-dffb7ae5a60a_medium.JPG", product_id: 3},
#               {url: "https://www.bestdressedkids.com/imagescache/spot_lg.jpg", product_id: 4},
#               {url: "http://www.tycollector.com/beanies/bb-images/brownie-bboc-2.jpg", product_id: 5},
#               {url: "https://images-na.ssl-images-amazon.com/images/I/41jXAfoSaDL._SX355_.jpg", product_id: 6},
#               {url: "https://www.coololdstuffforsale.com/photos/BeanieLegsFrog.jpg", product_id: 7}
#   ])


#1 expensive
#2 fluffy
#3 animal

CategoryProduct.create!([
                        {category_id: 1, product_id: 2},
                        {category_id: 1, product_id: 4},
                        {category_id: 1, product_id: 6},
                        {category_id: 2, product_id: 1},
                        {category_id: 2, product_id: 3},
                        {category_id: 2, product_id: 5},
                        {category_id: 3, product_id: 8},
                        {category_id: 3, product_id: 7},
                        {category_id: 3, product_id: 6},
                        {category_id: 3, product_id: 5},
                        {category_id: 3, product_id: 4},
                        {category_id: 3, product_id: 3},
                        {category_id: 3, product_id: 2},
                        {category_id: 3, product_id: 1}
                        ])

