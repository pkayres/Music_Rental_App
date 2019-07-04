class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.belongs_to :user, foreign_key: true
      t.string :renter
      t.boolean :rented
      t.string :image
      t.string :instrument_name
      t.string :description
      t.string :user_notes
    end
  end
end
