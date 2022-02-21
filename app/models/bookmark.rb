class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :venue

  # Indirect associations

  has_one    :dish,
             through: :venue,
             source: :dishes

  has_one    :user,
             through: :dish,
             source: :user

  # Validations

  # Scopes

  def to_s
    venue.to_s
  end
end
