class CreateSmallBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :small_businesses do |t|
      t.string :name
      t.string :price_range
      t.string :address

      t.timestamps
    end
  end
end
