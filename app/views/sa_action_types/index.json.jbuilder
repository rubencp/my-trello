json.array!(@sa_action_types) do |sa_action_type|
  json.extract! sa_action_type, :id, :name
  json.url sa_action_type_url(sa_action_type, format: :json)
end
