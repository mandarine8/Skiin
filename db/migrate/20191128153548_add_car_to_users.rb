class AddCarToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :hobbies, :string
    add_column :users, :car, :boolean
  end
end
