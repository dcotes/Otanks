class CreateHealthWorkers < ActiveRecord::Migration
  def change
    create_table :health_workers do |t|
      t.string :firstName
      t.string :lastName
      t.string :phoneNumber

      t.timestamps null: false
    end
  end
end
