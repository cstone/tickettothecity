class RemoveActiveFromAreas < ActiveRecord::Migration
  def up
    remove_column :areas, :active
  end

  def down
    add_column :areas, :active, :boolean
  end
end
