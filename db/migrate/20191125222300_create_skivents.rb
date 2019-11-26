class CreateSkivents < ActiveRecord::Migration[5.2]
  def change
    create_table :skivents do |t|
      t.string :title
      t.date :date
      t.string :level
      t.integer :number_of_place
      t.boolean :car
      t.string :description
      t.references :resort, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
