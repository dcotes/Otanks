json.array!(@patient_locations) do |patient_location|
  json.extract! patient_location, :id, :address, :latitude, :longitude
  json.url patient_location_url(patient_location, format: :json)
end
