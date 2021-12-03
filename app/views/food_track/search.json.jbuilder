json.foods do
  json.array!(@foods) do |food|
    json.name food.name
  end
end