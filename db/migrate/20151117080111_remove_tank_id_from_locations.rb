class RemoveTankIdFromLocations < ActiveRecord::Migration
  def self.up
    remove_column :locations, :tank_id
  end
end
