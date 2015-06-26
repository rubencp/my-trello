json.array!(@people) do |person|
  json.extract! person, :id, :name, :email, :ssid, :person_type_id
  json.url person_url(person, format: :json)
end
