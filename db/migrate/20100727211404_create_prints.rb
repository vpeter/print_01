class CreatePrints < ActiveRecord::Migration
  def self.up
    create_table :prints do |t|
      t.string :nev
      t.text :leiras
      t.integer :szines_oldalak
      t.integer :fekete_oldalak

      t.timestamps
    end
  end

  def self.down
    drop_table :prints
  end
end
