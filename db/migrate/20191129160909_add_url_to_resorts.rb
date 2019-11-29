class AddUrlToResorts < ActiveRecord::Migration[5.2]
  def change
    add_column :resorts, :url, :string
  end
end
