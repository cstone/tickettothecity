class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :title
      t.text :description
      t.string :attraction_image
      t.string :address
      t.string :phone
      t.string :website
      t.integer :area_id

      t.timestamps
    end
  end
end
