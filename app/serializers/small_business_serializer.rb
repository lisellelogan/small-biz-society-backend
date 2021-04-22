class SmallBusinessSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price_range, :address
end
