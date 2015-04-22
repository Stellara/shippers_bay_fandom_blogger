class Author < ActiveRecord::Base
  authenticates_with_sorcery!

  validates_confirmation_of :password, message: "Passwords should match", if: :password
end
