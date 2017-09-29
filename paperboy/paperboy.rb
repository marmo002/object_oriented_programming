class Paperboy

  def initialize(name)
    @name = name
    @experience = 0 #the number of papers they've delivered
    @earnings = 0 #$0.25 for every paper, $0.50 for extras. minus $2.00 if they are less 50

    @quota = 50
  end

  def name
    @name
  end

  def experience
    @experience
  end

  def earnings
    @earnings
  end

  def quota
    @quota = (@experience / 2) + 50
  end

  def deliver(start_address, end_address)
    a = [start_address, end_address].sort!
    a = (a.first..a.last).to_a
    number_houses = a.length
    return number_houses
  end

end
