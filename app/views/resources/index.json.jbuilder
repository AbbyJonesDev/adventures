json.array!(@resources) do |resource|
  json.extract! resource, :id, :title, :description, :link, :category
  json.url resource_url(resource, format: :json)
end
