class VenueResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :neighborhood_id, :integer
  attribute :map_address, :string

  # Direct associations

  belongs_to :neighborhood

  has_many   :bookmarks

  has_many   :dishes

  # Indirect associations

end
