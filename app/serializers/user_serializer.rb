class UserSerializer < ActiveModel::Serializer
  has_many :listings
  has_many :rents
  attributes :id,:name, :image, :listings, :received_ratings, :rents
end
