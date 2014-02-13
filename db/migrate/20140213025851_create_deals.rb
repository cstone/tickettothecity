class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.text :details
      t.integer :area_id
      t.string :deal_image

      t.timestamps
    end
  end
end
