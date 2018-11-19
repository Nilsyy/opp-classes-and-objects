class Cat

  def initialize (name, fav_food, meal_time)
    @name = name
    @fav_food = fav_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time > 12 && @meal_time < 36
      return "#{@meal_time - 12} o'clock."
        else
      return "a time that doesn't exist."
    end
  end

  def meow
    return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end
end

sofia = Cat.new("Sammy", "chicken", 37)
sara = Cat.new("Sara", "beef", 28)

puts sofia.meow
puts sara.meow
