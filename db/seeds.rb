# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SmallBusiness.destroy_all
SmallBusinessItem.destroy_all

#create small businesses
the_coffee_spot = SmallBusiness.create(name: "The Coffee Spot", price_range: "$", address: "123 Coffee Street, New York, NY 10023")
candle_collective = SmallBusiness.create(name: "Candle Collective", price_range: "$$", address: "456 Candle Road, Brooklyn, NY 10011")

#create small business items
the_coffee_spot.small_business_items.create([
    {name: "Cold Brew", price: 3.50, description: "Made in house. Has been steeped with ground coffee in room temperature overnight to produce coffee concentrate. IS diluted with water and served over ice.", image_url: "insert image of cold brew here", type_of_product: "Coffee & Tea"},
    {name: "Latte", price: 4.50, description: "Two shots of espresso with your choice of milk. Can be iced or hot.", image_url: "add latte image here", type_of_product: "Coffee & Tea"},
    {name: "Drip Coffee", price: 3.75, description: "Hot water poured over our freshly ground coffee.", image_url: "add drip coffee image here", type_of_product: "Coffee & Tea"}
])

candle_collective.small_business_items.create([
    {name: "Bahama Breeze", price: 30, description: "Handmade candle that gives you the vacation ambiance!", image_url: "add bahama breeze image here", type_of_product: "Home"},
    {name: "Fresh Linen", price: 25, description: "Handmade candle that smells like you just did laundry (Even if you didn't).", image_url: "add fresh linen image here", type_of_product: "Home"}
    (name: "Une Cafe", price: 40, description: "Handmade candle that smells like your favorite coffee shop in the comfort of your own home!", image_url: "add une cafe image here", type_of_product: "Home")
])