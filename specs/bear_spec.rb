require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestBear < MiniTest::Test

def setup
  @yogi_bear = Bear.new("Yogi", :grizzly)
  @baby_bear = Bear.new("Baby", :black)

  @salmon_fish = Fish.new("salmon")
  @trout_fish = Fish.new("trout")

end

def test_get_bear_name
  assert_equal("Baby", @baby_bear.name)
end

def test_get_bear_type
  assert_equal(:grizzly, @yogi_bear.type)
end

def test_fish_in_stomach
  assert_equal(0, @yogi_bear.fish_count)
end

end
