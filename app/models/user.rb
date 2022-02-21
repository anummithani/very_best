class User < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :dependent => :destroy

  # Indirect associations

  has_many   :bookmarks,
             :through => :dishes,
             :source => :bookmark

  # Validations

  # Scopes

  def to_s
    email
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
