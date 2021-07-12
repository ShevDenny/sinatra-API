class CreatePaintings < ActiveRecord::Migration[5.2]
  def change
    create_table :paintings do |t|
      t.string :painting_name
      t.integer :price
      t.string :artist_name
      t.integer :gallery_id
      t.integer :buyer_id
    end
  end
end
