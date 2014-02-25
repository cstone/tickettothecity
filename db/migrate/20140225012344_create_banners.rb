class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :banner_image

      t.timestamps
    end
  end
end
