class Product < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  monetize :price_cents
  def to_param
    name.parameterize
  end
end
