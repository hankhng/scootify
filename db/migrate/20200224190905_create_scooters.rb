class CreateScooters < ActiveRecord::Migration[5.2]
  def change
    create_table :scooters do |t|
      t.string :brand
      t.string :model
      t.string :transmission
      t.integer :year
      t.integer :price_per_day
      t.string :address
      t.string :license_type
      t.bigint :owner_id, foreign_key: true

      t.timestamps
    end
  end
end
