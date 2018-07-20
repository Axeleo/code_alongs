# super mario

# classes start with capital letter e.g. Mario.new
# instances are the variable which they are assinged to e.g. mario = 



require_relative 'mario'
require_relative 'yoshi'


mario = Mario.new
yoshi = Yoshi.new

require 'pry'
binding.pry



# interface for programmers
# these are all methods

mario = Mario.new
mario.jump
mario.duck
mario.eat('mushroom')
mario.eat('star')

red_yoshi = Yoshi.new('red')
yoshi.run

green_yoshi = Yoshi.new('green')
green_yoshi.run



bowser = Bowser.new
bowser.spit_fire


troopa = Troopa.new
