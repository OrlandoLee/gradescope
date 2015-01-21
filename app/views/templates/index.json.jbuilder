json.array!(@templates) do |template|
  json.extract! template, :id, :location, :user_id, :title
  json.url template_url(template, format: :json)
end
