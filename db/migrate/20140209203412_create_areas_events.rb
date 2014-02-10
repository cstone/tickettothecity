class CreateAreasEvents < ActiveRecord::Migration
  def up
    create_table :areas_events, :id => false do |t|
      t.integer :area_id
      t.integer :event_id
    end

    add_index :areas_events, :area_id
    add_index :areas_events, :event_id
  end

  def down
    drop_table :areas_events
  end
end
