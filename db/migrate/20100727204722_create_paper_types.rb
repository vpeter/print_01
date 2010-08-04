class CreatePaperTypes < ActiveRecord::Migration
  def self.up
    create_table :paper_types do |t|
      t.integer :paper_category_id
      t.string :nev
      t.text :leiras
      t.string :kep

      t.timestamps
    end
  end

  def self.down
    drop_table :paper_types
  end
end
