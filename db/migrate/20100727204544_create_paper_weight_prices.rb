class CreatePaperWeightPrices < ActiveRecord::Migration
  def self.up
    create_table :paper_weight_prices do |t|
      t.integer :paper_type_id
      t.integer :gramm
      t.integer :ar

      t.timestamps
    end
  end

  def self.down
    drop_table :paper_weight_prices
  end
end
