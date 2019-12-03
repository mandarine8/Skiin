class AddPhotoToSkivents < ActiveRecord::Migration[5.2]
  def change
    add_column :skivents, :photo, :string
  end
end
