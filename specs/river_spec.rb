require('minitest/autorun')
require('minitest/rg')

require_relative('../river.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Clyde")
    @fish = Fish.new("Jaws")
  end

  def test_it_has_a_name
    assert_equal( "Clyde", @river.name )
  end

  def test_it_has_fish
    assert_equal( [], @river.fish )
  end

  def test_it_actually_has_fish
    @river.add_fish( @fish )
    assert_equal( [ @fish ], @river.fish )
  end

end