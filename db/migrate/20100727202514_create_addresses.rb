class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer :user_id
      t.string :varos
      t.integer :irsz
      t.string :cim
      t.integer :statusz

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
