json.extract! user, :id, :name, :email, :password, :role, :group, :created_at, :updated_at
json.url user_url(user, format: :json)
