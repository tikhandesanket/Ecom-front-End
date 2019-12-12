class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :total_price
      t.integer :discount_price
      t.integer :item_count

      t.timestamps
    end
  end
end
