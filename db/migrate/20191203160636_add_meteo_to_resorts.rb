class AddMeteoToResorts < ActiveRecord::Migration[5.2]
  def change
    add_column :resorts, :meteo, :string
  end
end
