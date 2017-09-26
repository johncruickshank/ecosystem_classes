require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")

class TestRiver < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Wanda")
    @fish2 = Fish.new("Marlin")
    @fish3 = Fish.new("Flipper")
    @river1 = River.new("Amazon", [@fish1, @fish2, @fish3])
    @river2 = River.new("Clyde", [])
  end

  def test_fish_count()
    assert_equal(3, @river1.fish_count())
  end

end
