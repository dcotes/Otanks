class AddTankToLocation < ActiveRecord::Migration
  def change
    add_reference :locations, :tank, index: true, foreign_key: true
  end
end
