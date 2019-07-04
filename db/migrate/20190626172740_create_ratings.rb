class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :rater_id, foreign_key: true
      t.integer :rated_id, foreign_key: true
      t.integer :stars
      t.string :review
    end
  end
end
