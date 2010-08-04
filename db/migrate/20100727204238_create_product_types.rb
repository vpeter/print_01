class CreateProductTypes < ActiveRecord::Migration
  def self.up
    create_table :product_types do |t|
      t.integer :product_category_id
      t.string :nev
      t.text :leiras
      t.string :kep
      t.integer :szelesseg
      t.integer :magassag
      t.integer :oldalszam
      t.integer :felfele_nyilo

      t.timestamps
    end
  end

  def self.down
    drop_table :product_types
  end
end
