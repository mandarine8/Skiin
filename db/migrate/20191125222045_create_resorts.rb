class CreateResorts < ActiveRecord::Migration[5.2]
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :type
      t.string :description
      t.integer :number_of_slopes

      t.timestamps
    end
  end
end
