class Stock < ActiveRecord::Base
  has_many :clients, dependent: :destroy
  has_many :client_stocks, through: :clients
end
