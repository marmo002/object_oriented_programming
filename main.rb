require './bankAccount.rb'

personal = BankAccount.new(500, 9.0)

personal.deposit=120
puts personal.balance

personal.withdrawn= 300
puts personal.balance

personal.gain_interest= 3
puts personal.balance
