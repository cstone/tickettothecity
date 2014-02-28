class CreateDealsTypes < ActiveRecord::Migration
  def up
    create_table :deals_types, :id => false do |t|
      t.integer :deal_id
      t.integer :type_id
    end

    add_index :deals_types, :deal_id
    add_index :deals_types, :type_id
  end

  def down
    drop_table :deals_types
  end
end
