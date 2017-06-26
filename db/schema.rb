ActiveRecord::Schema.define(version: 20170626204640) do

  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sightings", force: :cascade do |t|
    t.date "date"
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "lng", precision: 10, scale: 6
    t.integer "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "region"
  end

end
