class CreateAreasAttractions < ActiveRecord::Migration
  def up
    create_table :areas_attractions, :id => false do |t|
      t.integer :area_id
      t.integer :attraction_id
    end

    add_index :areas_attractions, :area_id
    add_index :areas_attractions, :attraction_id
  end

  def down
    drop_table :areas_attractions
  end
end
