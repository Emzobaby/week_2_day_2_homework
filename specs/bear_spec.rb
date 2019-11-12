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

  @fish = [@salmon_fish, @trout_fish]

  @amazon_river = River.new("Amazon", @fish)

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

def test_bear_can_roar
  assert_equal("RARRRRRRR", @baby_bear.roar)
end

def test_bear_takes_fish_from_river
  @baby_bear.eat_fish(@amazon_river, @salmon_fish)
  assert_equal(1, @amazon_river.fish_count)
  assert_equal(1, @baby_bear.fish_count)
end

end
