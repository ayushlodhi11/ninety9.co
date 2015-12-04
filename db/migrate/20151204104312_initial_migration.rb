class InitialMigration < ActiveRecord::Migration
  def change
    add_index(:users, :id)
    add_index(:listings, :id)
    add_index(:listings, :user_id)
    add_index(:listings, [:postal_code,:status])
    add_index(:listings, [:postal_code,:status,:listing_type])
    add_index(:listings, [:postal_code,:listing_type,:status])
  end
end
