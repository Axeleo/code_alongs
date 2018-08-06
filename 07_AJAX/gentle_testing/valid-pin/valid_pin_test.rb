require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'valid_pin'

Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)

class ValidPinTest < MiniTest::Test

  def test_pin_with_numbers
    expected = true
    actual = valid_pin?('1234')
    assert_equal expected, actual
  end

  def test_pin_with_three_digits
    assert_equal false, valid_pin?('123')
  end

  def test_pin_with_letters
    assert_equal false, valid_pin?("A234")
  end

  def test_pin_with_all_same_number
    assert_equal false, valid_pin?('5555')
  end

end

# 1. we write test to prove your code does what you THINK it does

# 2. test help define the [roblem you are trying to solve

# 3. test help you verify that new changes or refactors don't break the rest of your code

# def test(expected, actual)
#   if expected == actual
#     puts "yay"
#   else
#     puts 'nay'
#   end
# end


# test(true, pin('1234')) # spec
# test(false, pin('12345')) # spec
# test(false, pin('0000')) # spec
# test(false, pin('1111')) # spec