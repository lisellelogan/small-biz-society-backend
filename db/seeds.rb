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
    {name: "Cold Brew", price: 3.50, description: "Made in house. Has been steeped with ground coffee in room temperature overnight to produce coffee concentrate. IS diluted with water and served over ice.", image_url: "https://images.unsplash.com/photo-1592663527359-cf6642f54cff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=722&q=80", type_of_product: "Coffee & Tea"},
    {name: "Latte", price: 4.50, description: "Two shots of espresso with your choice of milk. Can be iced or hot.", image_url: "https://images.unsplash.com/photo-1517701604599-bb29b565090c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80", type_of_product: "Coffee & Tea"},
    {name: "Drip Coffee", price: 3.75, description: "Hot water poured over our freshly ground coffee.", image_url: "https://images.unsplash.com/photo-1530016143569-dc4a7c89173b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80", type_of_product: "Coffee & Tea"}
])

trash_to_treasure.small_business_items.create([
    {name: "Classy Not Trashy", price: 79.99, description: "Handcrafted earrings that everyone needs in their jewlery box.", image_url: "https://images.unsplash.com/photo-1611271511360-f9385e4a45bf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80", type_of_product: "Jewelry"},
    {name: "Layer Me Up", price: 119.99, description: "A set of 3 necklaces that layer perfectly for that effortlessly chic look.", image_url: "https://images.unsplash.com/photo-1608543837910-b73953ea3417?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80", type_of_product: "Jewelry"},
    {name: "Ringin'", price: 78.50, description: "A gold ring set that will blow Thanos out of this universe.", image_url: "https://images.unsplash.com/photo-1608042314453-ae338d80c427?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1040&q=80", type_of_product: "Jewelry"}
])