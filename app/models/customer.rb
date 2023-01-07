class Customer < ApplicationRecord
    has_many :sales_orders
end
