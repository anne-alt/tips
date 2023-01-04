class ProductsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    def index
        products = Product.all
        render json: products
    end

    def show
        product = Product.find_by(id: params[:id])
        render json: product    
    end

    def create
        product = Product.create(product_params)
        render json: product, status: :created
    end

    def update
        product = Product.find_by(:id, params[:id])
        product.update(product_params)
        render json: product    
    end

    def destroy
        product = Product.find_by(:id, params[:id])
        product.destroy
        head :no_content
    end

    private

    def product_params
        params.permit(:name, :category, :bprice, :sprice, :expiry, :quantity, :size)
    end

    def render_not_found_response
        render json: {error: "Product not found"}, status: :not_found
    end
end
