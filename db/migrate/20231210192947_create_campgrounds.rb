class CreateCampgrounds < ActiveRecord::Migration[7.0]
  def change
    create_table :campgrounds do |t|
      t.string :name
      t.text :overview
      t.string :state
      t.string :city
      t.string :cover_photo_url
      t.json :contributed_photos
      t.datetime :last_viewed_at

      t.timestamps
    end
  end
end
