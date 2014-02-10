class CreateEventsTypes < ActiveRecord::Migration
  def up
    create_table :events_types, :id => false do |t|
      t.integer :type_id
      t.integer :event_id
    end

    add_index :events_types, :type_id
    add_index :events_types, :event_id
  end

  def down
    drop_table :events_types
  end
end
