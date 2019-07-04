class ListingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :renter, :rented, :description, :price, :user_notes, :image, :instrument_name, :category
end
