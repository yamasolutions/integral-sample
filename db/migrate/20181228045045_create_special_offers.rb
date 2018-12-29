class CreateSpecialOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :special_offers do |t|
      t.string :title
      t.string :description
      t.text :body
      t.integer :discount
      t.integer :image_id, index: true

      t.timestamps
    end
  end
end
