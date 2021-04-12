json.extract! feedback, :id, :content, :submitted_by, :presentation_id, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
