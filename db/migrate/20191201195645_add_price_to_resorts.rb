class AddPriceToResorts < ActiveRecord::Migration[5.2]
  def change
    add_column :resorts, :price, :integer
  end
end
