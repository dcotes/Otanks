class AddLocationToTank < ActiveRecord::Migration
  def change
    add_reference :tanks, :location, index: true, foreign_key: true
  end
end
