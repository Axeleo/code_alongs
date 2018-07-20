require_relative 'monkies'
require 'pry'

adam = Monkies.new("Adam", "Spider Monkey")
adam.eat('fruit salad')
adam.eat('banana milkshake')
adam.introduce

binding.pry
