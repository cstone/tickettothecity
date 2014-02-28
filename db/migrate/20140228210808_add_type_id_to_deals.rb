class AddTypeIdToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :type_id, :integer
  end
end
