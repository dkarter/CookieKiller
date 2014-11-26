json.array!(@killers) do |killer|
  json.extract! killer, :id
  json.url killer_url(killer, format: :json)
end
