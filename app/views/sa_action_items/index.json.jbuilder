json.array!(@sa_action_items) do |sa_action_item|
  json.extract! sa_action_item, :id, :title, :description, :status, :remark, :link_ulr, :person_id
  json.url sa_action_item_url(sa_action_item, format: :json)
end
