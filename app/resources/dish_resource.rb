class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :cuisine_id, :integer
  attribute :venue_id, :integer
  attribute :loved, :boolean
  attribute :user_id, :integer

  # Direct associations

  belongs_to :cuisine

  belongs_to :venue

  belongs_to :user

  # Indirect associations

  has_one    :bookmark
end
