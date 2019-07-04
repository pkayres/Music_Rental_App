class UserSerializer < ActiveModel::Serializer
  has_many :listings
  attributes :id,:name, :image, :listings, :received_ratings 
end
