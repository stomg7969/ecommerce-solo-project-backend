class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :timestamps, :password_digest
end
