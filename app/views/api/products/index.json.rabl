object @products
attributes :id, :name, :description, :price
attribute :to_param => :alias
node :url do |p|
    product_path p
end