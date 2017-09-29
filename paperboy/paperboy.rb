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
    no_paper_delivered = a.length

    if no_paper_delivered == quota
      @earnings += no_paper_delivered * 0.25
    elsif no_paper_delivered > quota
      @earnings += quota * 0.25
      @earnings += (no_paper_delivered - quota) * 0.50
    elsif no_paper_delivered < quota
      @earnings += (no_paper_delivered * 0.25) - 2.00
    end
    @experience += no_paper_delivered

  end

  def report
    "I am #{name}, I've delivered #{@experience} papers, and I've earned $#{@earnings} so far!"
  end

end
