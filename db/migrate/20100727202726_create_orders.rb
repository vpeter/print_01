class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :user_id
      t.integer :order_status_id
      t.integer :address_szla_id
      t.integer :address_szall_id
      t.date :datum_megr
      t.date :datum_szall
      t.text :megjegyzes

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
