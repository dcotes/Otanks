class RemoveTankIdFromLocs < ActiveRecord::Migration
  def self.up
    remove_column :locations, :tank_id
  end

  def self.down
    add_column :locations, :tank_id, :integer
  end
end
