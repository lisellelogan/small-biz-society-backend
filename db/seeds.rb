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
trash_to_treasure = SmallBusiness.create(name: "Trash To Treasure", price_range: "$$", address: "789 Gold Street, New York, NY 10003")

#create small business items
the_coffee_spot.small_business_items.create([
    {name: "Cold Brew", price: 3.50, description: "Made in house. Has been steeped with ground coffee in room temperature overnight to produce coffee concentrate. IS diluted with water and served over ice.", image_url: "insert image of cold brew here", type_of_product: "Coffee & Tea"}
])