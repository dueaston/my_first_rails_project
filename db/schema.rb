
ActiveRecord::Schema[7.1].define(version: 2024_04_20_162001) do
  
  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end