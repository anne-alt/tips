class SalesOrdersController < ApplicationController

    belongs_to :customers
    has_many :products
end
