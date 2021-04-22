class SmallBusinessItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :description, :image_url, :type_of_product
end
