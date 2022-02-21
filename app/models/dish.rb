class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  belongs_to :venue

  belongs_to :user

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
