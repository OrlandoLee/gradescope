json.array!(@submissions) do |submission|
  json.extract! submission, :id, :student_id, :student_name, :annotations
  json.url submission_url(submission, format: :json)
end
