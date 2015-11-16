class AddSerialNumberToTanks < ActiveRecord::Migration
  def change
    add_column :tanks, :serial_number, :string
  end
end
