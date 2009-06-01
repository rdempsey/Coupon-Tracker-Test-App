class CreateCoupons < ActiveRecord::Migration
  def self.up
    create_table :coupons do |t|
      t.string :where
      t.integer :amount
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :coupons
  end
end
