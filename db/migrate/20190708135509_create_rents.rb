class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.belongs_to :listing, foreign_key: true

      t.timestamps
    end
  end
end
