require('minitest/autorun')
require('minitest/rg')

require_relative('../bear.rb')
require_relative('../river.rb')

class TestBear < MiniTest::Test

  def setup
    @river = River.new("Colorado")
    @river.add_fish("salmon")
    
    @bear = Bear.new("Killer")
  end

  def test_it_has_a_name
    assert_equal("Killer", @bear.name)
  end

  def test_it_has_a_belly
    assert_equal( [], @bear.belly )
  end

  def test_it_can_take_fish_from_river
    @bear.take_fish( @river )
    assert_equal( 1, @bear.belly.count )
  end

end