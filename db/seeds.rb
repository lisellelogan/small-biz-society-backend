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
trash_to_treasure = SmallBusiness.create(name: "Trash To Treasure", price_range: "$$", address: "789 Gold Street, New York, NY 10003")

#create small business items
the_coffee_spot.small_business_items.create([
    {name: "Cold Brew", price: 3.50, description: "Made in house. Has been steeped with ground coffee in room temperature overnight to produce coffee concentrate. IS diluted with water and served over ice.", image_url: "insert image of cold brew here", type_of_product: "Coffee & Tea"},
    {name: "Latte", price: 4.50, description: "Two shots of espresso with your choice of milk. Can be iced or hot.", image_url: "add latte image here", type_of_product: "Coffee & Tea"},
    {name: "Drip Coffee", price: 3.75, description: "Hot water poured over our freshly ground coffee.", image_url: "add drip coffee image here", type_of_product: "Coffee & Tea"}
])

trash_to_treasure.small_business_items.create([
    {name: "Classy Not Trashy", price: 79.99, description: "Handcrafted earrings that everyone needs in their jewlery box.", image_url: "add earrings here", type_of_product: "Jewelry"},
    {name: "Layer Me Up", price: 119.99, description: "A set of 3 necklaces that layer perfectly for that effortlessly chic look.", image_url: "add necklace here", type_of_product: "Jewelry"},
    {name: "Ringin'", price: 78.50, description: "A gold ring set that will blow Thanos out of this universe.", image_url: "add rings here", type: "Jewelry"}
])