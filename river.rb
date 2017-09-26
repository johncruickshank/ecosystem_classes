class River
  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_count()
    return @fish.length
  end

  def take_fish_from_river()
    @fish.pop
  end











end
