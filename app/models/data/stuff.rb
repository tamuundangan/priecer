class Data::Stuff
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  # include Mongoid::Timetamps::Created
  
  store_in collection: "stuffs"

  field :name, type: String
  field :price, type: BigDecimal
  field :category, type: String
  field :location, type: String
  field :created_at, type: DateTime
end
