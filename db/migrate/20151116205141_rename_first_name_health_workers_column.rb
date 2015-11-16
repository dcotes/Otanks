class RenameFirstNameHealthWorkersColumn < ActiveRecord::Migration
  def change
    rename_column :health_workers, :firstName, :first_name
  end
end
