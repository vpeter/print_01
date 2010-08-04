class CreateOrderItems < ActiveRecord::Migration
  def self.up
    create_table :order_items do |t|
      t.integer :order_id
      t.string :nev
      t.integer :print_id
      t.integer :paper_weight_price_id
      t.integer :paper_type_id
      t.integer :product_type_id
      t.integer :document_id
      t.integer :darab
      t.integer :ar_lezart

      t.timestamps
    end
  end

  def self.down
    drop_table :order_items
  end
end
