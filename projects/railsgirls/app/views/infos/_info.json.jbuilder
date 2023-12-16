json.extract! info, :id, :name, :description, :picture, :created_at, :updated_at
json.url info_url(info, format: :json)
