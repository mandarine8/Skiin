class AddPicturesToResorts < ActiveRecord::Migration[5.2]
  def change
    add_column :resorts, :pictures, :string, array: true
  end
end
