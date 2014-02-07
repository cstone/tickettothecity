class RenameNameToValue < ActiveRecord::Migration
  def up
    rename_column :prices, :name, :value
  end

  def down
    rename_column :prices, :value, :name
  end
end
