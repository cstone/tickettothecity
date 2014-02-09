class CreateAttractionsTypes < ActiveRecord::Migration
  def up
    create_table :attractions_types, :id => false do |t|
      t.integer :attraction_id
      t.integer :type_id
    end

    add_index :attractions_types, :type_id
    add_index :attractions_types, :attraction_id
  end

  def down
    drop_table :attractions_types
  end
end
