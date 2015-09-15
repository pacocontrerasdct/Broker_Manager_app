# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Stock.delete_all
Client.delete_all
ClientStock.delete_all


stk1 = Stock.create!(name: 'Google', share_price: 100)
stk2 = Stock.create!(name: 'IBM', share_price: 100)
stk3 = Stock.create!(name: 'Apple', share_price: 200)
stk4 = Stock.create!(name: 'BP', share_price: 50)
stk5 = Stock.create!(name: 'Vodafone', share_price: 20)

cl1 = Client.create!(name: 'John Lennon', cash_balance: 21000, share_balance: 1000)
cl2 = Client.create!(name: 'Tom Jones', cash_balance: 13000, share_balance: 1000)
cl3 = Client.create!(name: 'Keith Richards', cash_balance: 14000, share_balance: 1000)
cl4 = Client.create!(name: 'Art Gartfunkel', cash_balance: 18000, share_balance: 1000)
cl5 = Client.create!(name: 'Julio Iglesias', cash_balance: 11000, share_balance:  1000)

ClientStock.create!(num_shares: 8, client_id: cl1.id, stock_id: stk1.id)
ClientStock.create!(num_shares: 9, client_id: cl2.id, stock_id: stk2.id)
ClientStock.create!(num_shares: 5, client_id: cl2.id, stock_id: stk5.id)
ClientStock.create!(num_shares: 10, client_id: cl3.id, stock_id: stk1.id)
ClientStock.create!(num_shares: 10, client_id: cl4.id, stock_id: stk2.id)
ClientStock.create!(num_shares: 5, client_id: cl5.id, stock_id: stk3.id)
ClientStock.create!(num_shares: 4, client_id: cl1.id, stock_id: stk4.id)

puts "seeded! with #{Stock.all.count} Stock Options"
puts "seeded! with #{Client.all.count} Clients"
puts "seeded! with #{ClientStock.all.count} Share Orders"



