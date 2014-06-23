json.array!(@projects) do |project|
  json.extract! project, :id, :title, :link, :date, :description, :category, :status
  json.url project_url(project, format: :json)
end
