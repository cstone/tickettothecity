class RemoveActiveFromCuisines < ActiveRecord::Migration
  def up
    remove_column :cuisines, :active
  end

  def down
    add_column :cuisines, :active, :boolean
  end
end
