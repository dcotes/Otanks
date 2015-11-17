class AddVisitToUser < ActiveRecord::Migration
  def change
    add_reference :users, :visit, index: true, foreign_key: true
  end
end
