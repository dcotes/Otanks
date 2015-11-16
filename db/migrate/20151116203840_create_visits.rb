class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :note

      t.timestamps null: false
    end
  end
end
