class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.decimal :price
      t.timestamps
    end
  end
end
