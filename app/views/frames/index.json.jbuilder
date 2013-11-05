json.array!(@frames) do |frame|
  json.extract! frame, :name
  json.url frame_url(frame, format: :json)
end
