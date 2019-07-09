class User < ApplicationRecord
  has_many :received_ratings, foreign_key: :rated_id, class_name:"Rating"
  has_many :created_ratings,  foreign_key: :rater_id, class_name:"Rating"
  has_many :users, source: "User", through: :received_ratings
  has_many :listings
  has_many :rents

  has_secure_password

  validates :name, presence: true, uniqueness: true
end
