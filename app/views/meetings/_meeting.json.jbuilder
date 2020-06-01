json.extract! meeting, :id, :mentor_id, :user_id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
