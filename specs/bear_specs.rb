require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class TestBear < MiniTest::Test
  def setup()
    @fish1 = Fish.new("Wanda")
    @fish2 = Fish.new("Marlin")
    @fish3 = Fish.new("Flipper")
    @river1 = River.new("Amazon", [@fish1, @fish2, @fish3])
    @bear1 = Bear.new("Baloo", [])
    @bear2 = Bear.new("Yogi", [])
  end

  def test_roar()
    assert_equal("BIG ROAR NOISE...", @bear1.roar())
  end

  def test_food_count()
    assert_equal(0, @bear1.food_count())
  end

  def test_grab_fish()
    @bear1.grab_fish(@river1)
    assert_equal(1, @bear1.food_count())
  end








end
