class SalesOrdersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

   

    def index
        sales_orders = SalesOrder.all
        render json: sales_orders
    end

    def show
        sales_order = SalesOrder.find_by(id: params[:id])
        render json: sales_order   
    end

    def create
        sales_order = SalesOrder.create(sales_order_params)
        render json: sales_order, status: :created
    end

    def update
        sales_order = SalesOrder.find_by(:id, params[:id])
        sales_order.update(sales_order_params)
        render json: sales_order    
    end

    def destroy
        sales_order = SalesOrder.find_by(:id, params[:id])
        sales_order.destroy
        head :no_content
    end

    private

    def sales_order_params
        params.permit(:customer_id, :product_id, :quantity, :total, :mop, :amountReceived)
    end

    def render_not_found_response
        render json: {error: "Customer not found"}, status: :not_found
    end

end
