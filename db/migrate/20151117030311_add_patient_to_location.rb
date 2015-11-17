class AddPatientToLocation < ActiveRecord::Migration
  def change
    add_reference :locations, :patient, index: true, foreign_key: true
  end
end
