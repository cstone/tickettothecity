class RemoveActiveFromFeatures < ActiveRecord::Migration
  def up
    remove_column :features, :active
  end

  def down
    add_column :features, :active, :boolean
  end
end
