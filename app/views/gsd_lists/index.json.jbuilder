json.array!(@gsd_lists) do |gsd_list|
  json.extract! gsd_list, :id, :title, :description
  json.url gsd_list_url(gsd_list, format: :json)
end
