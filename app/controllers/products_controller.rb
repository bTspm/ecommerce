class ProductsController < ApplicationController
  def home
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product created successfully.!"
      redirect_to edit_product_path(@product)
    else
      flash[:error] = "Error creating product."
      redirect_to new_product_path
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update product_params
      flash[:success] = "Product created successfully.!"
    else
      flash[:error] = "Error creating product."
    end
    redirect_to edit_product_path(@product)
  end

  def index
    @pagy, @products = pagy(Product.all.order(updated_at: :desc))
  end

  def index_v2
    @pagy, @products = pagy(Product.all.order(updated_at: :desc))
  end

  def edit
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:title,
                                    :description,
                                    :cover_image,
                                    :affiliate_link,
                                    :coupon_code)
  end
end
