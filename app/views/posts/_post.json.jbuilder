json.extract! post, :id, :title, :description, :url, :job_type, :location, :remote_ok, :apply_url, :created_at, :updated_at
json.url post_url(post, format: :json)
