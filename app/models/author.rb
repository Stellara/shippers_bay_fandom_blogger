class Author < ActiveRecord::Base
  has_many :articles

  authenticates_with_sorcery!

  validates_confirmation_of :password, presence: true, message: "Passwords should match", if: :password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}
end
