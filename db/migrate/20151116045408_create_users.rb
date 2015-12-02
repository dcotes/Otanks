class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.has_one :user_location

      t.timestamps null: false
    end
  end
end
