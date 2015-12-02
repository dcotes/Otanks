class AddPatientLocationRefToTanks < ActiveRecord::Migration
  def change
    add_reference :tanks, :patient_location, index: true, foreign_key: true
  end
end
