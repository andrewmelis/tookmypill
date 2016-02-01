json.array!(@pill_taken_events) do |pill_taken_event|
  json.extract! pill_taken_event, :id
  json.url pill_taken_event_url(pill_taken_event, format: :json)
end
