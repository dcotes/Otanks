class RemoveLocationIdFromTanks < ActiveRecord::Migration
  def self.up
      remove_column :tanks, :location_id
  end
  def self.down
    add_column :tanks, :location_id
  end
end
