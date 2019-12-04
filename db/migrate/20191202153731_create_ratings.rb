class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.string :review
      t.references :user, foreign_key: true
      t.references :skivent, foreign_key: true

      t.timestamps
    end
  end
end
