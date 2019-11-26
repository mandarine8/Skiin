class ChangeTypeNameInResorts < ActiveRecord::Migration[5.2]
  def change
    rename_column :resorts, :type, :resort_type
  end
end
