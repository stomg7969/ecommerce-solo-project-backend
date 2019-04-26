class User < ApplicationRecord
  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }
  validates_presence_of :name, :email, :password
end
