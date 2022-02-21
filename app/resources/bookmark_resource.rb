class BookmarkResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :venue_id, :integer

  # Direct associations

  belongs_to :venue

  # Indirect associations

end