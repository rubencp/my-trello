json.array!(@sa_action_statuses) do |sa_action_status|
  json.extract! sa_action_status, :id, :name
  json.url sa_action_status_url(sa_action_status, format: :json)
end
