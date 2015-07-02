json.array!(@sa_request_statuses) do |sa_request_status|
  json.extract! sa_request_status, :id, :name
  json.url sa_request_status_url(sa_request_status, format: :json)
end
