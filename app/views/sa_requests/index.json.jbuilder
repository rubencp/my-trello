json.array!(@sa_requests) do |sa_request|
  json.extract! sa_request, :id, :title, :topic, :status, :decision, :applicant, :sa_incharge, :impacted_projects, :sub_projects, :mechanical_interfaces
  json.url sa_request_url(sa_request, format: :json)
end
