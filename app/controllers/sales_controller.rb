class SalesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def show
        sale = Sale.find_by(id: params[:id])
        render json: sale, include: :sales_orders   
    end

    private 
    def render_not_found_response
        render json: {error: "Sale not found"}, status: :not_found
    end

end
