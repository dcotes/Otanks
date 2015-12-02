class AddPatientRefToPatientLocations < ActiveRecord::Migration
  def change
    add_reference :patient_locations, :patient, index: true, foreign_key: true
  end
end
