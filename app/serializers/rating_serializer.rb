class RatingSerializer < ActiveModel::Serializer
  attributes :id, :rater_id, :rated_id, :stars, :review
end
