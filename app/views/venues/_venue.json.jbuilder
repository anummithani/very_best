json.extract! venue, :id, :name, :neighborhood_id, :map_address, :created_at, :updated_at
json.url venue_url(venue, format: :json)
