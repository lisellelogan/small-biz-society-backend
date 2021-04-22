class SmallBusinessSerializer
  include FastJsonapi::ObjectSerializer
  has_many :small_businesses
  attributes :name, :price_range, :address
end
