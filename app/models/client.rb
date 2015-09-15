class Client < ActiveRecord::Base
  has_many :stocks, dependent: :destroy
  has_many :client_stocks, through: :stocks 
end
