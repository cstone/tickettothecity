class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :details
      t.string :event_image
      t.string :venue
      t.string :price
      t.string :address
      t.string :phone
      t.string :website
      t.integer :area_id
      t.integer :type_id

      t.timestamps
    end
  end
end
