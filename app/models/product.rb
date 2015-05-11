class Product < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  before_create { |p| p.alias = p.to_param }
  monetize :price_cents
  def to_param
    name.parameterize
  end
end
