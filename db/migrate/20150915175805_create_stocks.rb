class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :share_price

      t.timestamps null: false
    end
  end
end
