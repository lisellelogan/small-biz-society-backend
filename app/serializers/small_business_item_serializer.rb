class SmallBusinessItemSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :small_business
  attributes :name, :price, :description, :image_url, :type_of_product, :small_business_id
end
