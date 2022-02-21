class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string

  # Direct associations

  has_many :dishes

  # Indirect associations

  has_many :bookmarks do
    assign_each do |user, bookmarks|
      bookmarks.select do |b|
        b.id.in?(user.bookmarks.map(&:id))
      end
    end
  end
end
