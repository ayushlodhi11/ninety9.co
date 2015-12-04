class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.decimal :price
      t.string :postal_code
      t.string :listing_type
      t.integer :user_id
      t.string :status

      t.timestamps null: false
    end
  end
end
