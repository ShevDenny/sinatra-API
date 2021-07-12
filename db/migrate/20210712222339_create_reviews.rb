class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :buyer_id
      t.integer :gallery_id
      t.string :comment
    end
  end
end
