class CreateCityGuides < ActiveRecord::Migration
  def change
    create_table :city_guides do |t|
      t.string :name
      t.text :description
      t.string :pdf

      t.timestamps
    end
  end
end
