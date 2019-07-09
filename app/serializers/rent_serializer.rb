class RentSerializer < ActiveModel::Serializer
  attributes :id, :listing_id, :user_id, :listing
  has_one :listing
end
