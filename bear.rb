class Bear
  def initialize(name, food)
    @name = name
    @food = food
  end

  def roar()
    return "BIG ROAR NOISE..."
  end

  def food_count()
    return @food.length
  end

  def grab_fish(river)
    if river.fish_count() > 0
      @food << river.take_fish_from_river()
    end
  end




end
