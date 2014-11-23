json.array!(@alerts) do |alert|
  json.extract! alert, :id, :title, :content, :latitude, :longitude
  json.url alert_url(alert, format: :json)
end
