class DropHealthWorkersTable < ActiveRecord::Migration
  def up
    drop_table :health_workers
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
