class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :text
      t.text :image
      t.string :address
      t.float :latitude
      t.float :longitude
    end
  end
end
