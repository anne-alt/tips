
ActiveRecord::Schema[7.0].define(version: 2023_01_04_144108) do
  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "bprice"
    t.integer "sprice"
    t.string "expiry"
    t.integer "quantity"
    t.text "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer "sales_order_id"
    t.integer "total"
    t.integer "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_orders", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "product_id"
    t.integer "quantity"
    t.integer "total"
    t.string "mop"
    t.integer "amountReceived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
