class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def home
    @products = Product.three_most_recent
    @us_products = Product.us_product
    @most_review_product = Product.most_reviews

  end
  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
    render :edit
    end
  end



  def create
  @product = Product.new(product_params)
  if @product.save

    #redirect to individual product item
    redirect_to  product_path(@product)

    #redirect to the products page
    # redirect_to  products_path
  else

    render :new
  end
end



  private

  def product_params
    params.require(:product).permit(:name, :country_of_origin, :cost)
  end

end
