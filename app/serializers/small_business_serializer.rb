class SmallBusinessSerializer
  include FastJsonapi::ObjectSerializer
  has_many :small_business_items
  attributes :name, :price_range, :address
end
