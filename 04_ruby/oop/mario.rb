class Mario # factory, templaet or blueprint for making mario's

  def initialize # special method that runs when you create new marion
    puts 'made new mario'
    @size = 'small' # instance variable lives as long as the instance lives
  end

  def jump()
    puts 'jumping'
  end

  def eat(food)
    if food == 'mushroom'
      @size = 'big'
    end


  end  

end