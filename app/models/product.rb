class Product < ActiveRecord::Base
  alias_attribute :alias, :name
  monetize :price_cents
end
