require('minitest/autorun')
require('minitest/rg')

require_relative('../fish.rb')

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("haddock")
  end

  def test_has_a_name
    assert_equal("haddock", @fish.name)
  end

end