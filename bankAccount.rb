class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate/100
  end

  def balance
    @balance
  end

  def deposit=(amount)
    @balance += amount
  end

  def withdrawn=(amount)
    @balance -= amount
  end

  def gain_interest=(time)
    interest = @balance * @interest_rate * time
    @balance += interest
  end
end
