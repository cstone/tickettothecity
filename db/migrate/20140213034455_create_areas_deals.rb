class CreateAreasDeals < ActiveRecord::Migration
  def up
    create_table :areas_deals, :id => false do |t|
      t.integer :area_id
      t.integer :deal_id
    end

    add_index :areas_deals, :area_id
    add_index :areas_deals, :deal_id

  end

  def down
    drop_table :areas_deals
  end
end
