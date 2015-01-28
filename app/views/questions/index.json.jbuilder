json.array!(@questions) do |question|
  json.extract! question, :id, :template_id, :page, :x1, :x2, :y1, :y2, :height, :width, :points
  json.url question_url(question, format: :json)
end
