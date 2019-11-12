require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < MiniTest::Test

def setup
  @salmon_fish = Fish.new("salmon")
  @trout_fish = Fish.new("trout")
end

def test_get_fish_name
  assert_equal("salmon", @salmon_fish.name)
end

end
