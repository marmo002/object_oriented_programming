class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time < 12
      "#{@meal_time}:00AM"
    elsif @meal_time >= 12
      @meal_time -= 12
      "#{@meal_time}:00PM"
    end
  end

  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end

end
