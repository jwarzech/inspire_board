class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :user
      t.string :title, :null => false
      t.string :source_url, :null => false
      t.string :thumbnail_url, :null => false
      t.string :image_url, :null => false
      t.integer :width, :null => false
      t.integer :height, :null => false
      t.timestamps
    end
  end
end
