class CustomersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        customers = Customer.all
        render json: customers
    end

    def show
        customer = Customer.find_by(id: params[:id])
        render json: customer    
    end

    def create
        customer = Customer.create(customer_params)
        render json: customer, status: :created
    end

    def update
        customer = Customer.find_by(:id, params[:id])
        customer.update(customer_params)
        render json: customer    
    end

    def destroy
        customer = Customer.find_by(:id, params[:id])
        customer.destroy
        head :no_content
    end

    private

    def customer_params
        params.permit(:name, :contact)
    end

    def render_not_found_response
        render json: {error: "Customer not found"}, status: :not_found
    end
end
