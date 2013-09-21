json.array!(@projects) do |project|
  json.extract! project, :title, :body, :logo_url, :image_url, :challenge, :result, :quote, :quotable_person, :quotable_positon_and_company, :one_line_project_description
  json.url project_url(project, format: :json)
end
