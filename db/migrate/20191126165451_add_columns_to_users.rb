class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
     add_column :users, :level, :string
      add_column :users, :picture, :string
       add_column :users, :description, :string
        add_column :users, :name, :string
  end
end

