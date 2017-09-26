require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")

class TestFish < MiniTest::Test

  def setup()
    @fish = Fish.new("Wanda")
  end

  def test_get_name()
    assert_equal("Wanda", @fish.get_name)
  end






end
