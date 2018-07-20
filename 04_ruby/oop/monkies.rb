class Monkies

  def initialize(name = 'monkey', species = 'ape')
    @name = name
    @species = species
    @foods_eaten = []
  end

  def eat(food)
    @foods_eaten << food
  end

  def introduce
    "I am #{@name} from the #{@species} species and I have eaten a #{@foods_eaten.join(', ')}"
  end

end 