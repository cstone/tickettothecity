class AddTypeIdToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :type_id, :integer
  end
end
