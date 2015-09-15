class AddShareBalanceToClient < ActiveRecord::Migration
  def change
    add_column :clients, :share_balance, :integer
  end
end
