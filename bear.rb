class Bear
  require "pry-byebug"
  attr_reader( :bear_name, :bear_type)
  attr_accessor(:food)

  def initialize(bear_name,bear_type)
    @bear_name=bear_name
    @bear_type=bear_type
    @food=[]
  end

  def roar()
    return "roooooooaaaarrrrrrr!!!!!!!" 
  end

  def eat_fish (fishes,fish_name)
    #binding.pry
    for fish in fishes
      if (fish.name.include?(fish_name))
         fishes.delete(fish)
         @food=@food.push(fish_name)
         return
      end
    end
  end
end