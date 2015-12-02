class AddCapacityToTanks < ActiveRecord::Migration
  def change
    add_column :tanks, :capacity, :string
  end
end
