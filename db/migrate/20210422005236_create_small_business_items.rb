class CreateSmallBusinessItems < ActiveRecord::Migration[6.1]
  def change
    create_table :small_business_items do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :image_url
      t.string :type_of_product
      t.integer :small_business_id

      t.timestamps
    end
  end
end
