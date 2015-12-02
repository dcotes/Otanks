class DropLocations < ActiveRecord::Migration
  def up
    drop_table :locations
  end

  def down
    create_table "locations", force: :cascade do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.timestamps  
    end
  end
  
end
