class Api::ProductsController < Api::ApplicationController
  respond_to :json
  before_action :set_product, only: [:show]

  def index
    @products = Product.all
  end

  def show
  end

private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
