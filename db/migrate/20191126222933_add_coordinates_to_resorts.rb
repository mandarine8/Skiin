class AddCoordinatesToResorts < ActiveRecord::Migration[5.2]
  def change
    add_column :resorts, :latitude, :float
    add_column :resorts, :longitude, :float
  end
end
