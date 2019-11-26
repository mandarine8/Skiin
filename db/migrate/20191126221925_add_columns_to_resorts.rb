class AddColumnsToResorts < ActiveRecord::Migration[5.2]
  def change
    add_column :resorts, :address, :string
  end
end
