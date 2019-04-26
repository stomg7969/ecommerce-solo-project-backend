class User < ApplicationRecord
  has_secure_password

  has_many :orders

  validates :username, uniqueness: { case_sensitive: false }
  validates_presence_of :username, :email, :password
end
