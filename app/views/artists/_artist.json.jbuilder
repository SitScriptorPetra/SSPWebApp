json.extract! artist, :id, :city, :name, :genre, :bio, :web, :band, :created_at, :updated_at
json.url artist_url(artist, format: :json)
