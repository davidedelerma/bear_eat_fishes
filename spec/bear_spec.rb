require 'minitest/autorun'
require_relative ("../bear")
require_relative ("../river")
require_relative ("../fish")



class TestBear < Minitest::Test
  
  def setup
    @bear1=Bear.new("Yogi","Grizzly")
    @bear2=Bear.new("Pippa","Brown Bear")

    fish1=Fish.new("Nemo")
    fish2=Fish.new("Giacomo")
    fish3=Fish.new("Carl")

    fishes=[fish1,fish2,fish3]

    @river=River.new(fishes) 
  end

  def test_get_bear_name_and_kind

    assert_equal("Yogi",@bear1.bear_name)
    assert_equal("Brown Bear",@bear2.bear_type)
  end

  def test_roar
    assert_equal("roooooooaaaarrrrrrr!!!!!!!",@bear1.roar())
  end

  def test_initial_nb_of_fishes
    assert_equal(0,@bear1.food.length)
  end

  def test_take_fish_from_river
    @bear2.eat_fish(@river.fishes,"Nemo")
    assert_equal(1,@bear2.food.length)
    assert_equal(2,@river.fishes.length)

  end
end