class BookmarkResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :venue_id, :integer

  # Direct associations

  belongs_to :venue

  # Indirect associations

  has_one    :dish
  has_one    :user

  filter :user_id, :integer do
    eq do |scope, value|
      scope.eager_load(:user).where(dishes: { user_id: value })
    end
  end
end
