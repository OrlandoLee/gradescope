json.array!(@scores) do |score|
  json.extract! score, :id, :submission_id, :question_id, :score, :notes
  json.url score_url(score, format: :json)
end
