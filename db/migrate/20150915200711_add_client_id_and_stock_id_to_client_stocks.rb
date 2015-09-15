class AddClientIdAndStockIdToClientStocks < ActiveRecord::Migration
  def change
    add_reference :client_stocks, :client, index: true, foreign_key: true
    add_reference :client_stocks, :stock, index: true, foreign_key: true
  end
end
