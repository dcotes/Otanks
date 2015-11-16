class FixLastNameAndPhoneNumberHealthCareWorkers < ActiveRecord::Migration
  def change
    rename_column :health_workers, :lastName, :last_name
    rename_column :health_workers, :phoneNumber, :phone_number
  end
end
