class MicroService < ActiveRecord::Migration
  def change
    create_table :price_change do |t|
      t.decimal :old_price
      t.decimal :new_price
      t.integer :listing_id

      t.timestamps null: false
    end
  end
end
