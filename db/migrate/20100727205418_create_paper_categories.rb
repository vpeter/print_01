class CreatePaperCategories < ActiveRecord::Migration
  def self.up
    create_table :paper_categories do |t|
      t.string :nev
      t.text :leiras
      t.string :kep

      t.timestamps
    end
  end

  def self.down
    drop_table :paper_categories
  end
end
