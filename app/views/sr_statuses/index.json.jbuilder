json.array!(@sr_statuses) do |sr_status|
  json.extract! sr_status, :id, :name
  json.url sr_status_url(sr_status, format: :json)
end
