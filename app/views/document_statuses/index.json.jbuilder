json.array!(@document_statuses) do |document_status|
  json.extract! document_status, :id, :name
  json.url document_status_url(document_status, format: :json)
end
