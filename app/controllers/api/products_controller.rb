class Api::ProductsController < Api::ApplicationController
  respond_to :json
  before_action :set_product, only: [:show]
  paginated_action only: [:index]

  def index
    @products = Product.all.page(@kp_page).per(@kp_per_page)
  end

  def show
  end

private
  def set_product
    @product = Product.find_by(alias: params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
