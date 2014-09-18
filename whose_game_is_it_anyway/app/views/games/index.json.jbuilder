json.array!(@games) do |game|
  json.extract! game, :id, :title, :description, :number_of_players
  json.url game_url(game, format: :json)
end
