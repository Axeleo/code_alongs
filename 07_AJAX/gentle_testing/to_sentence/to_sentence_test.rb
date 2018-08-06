require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'to_sentence'
Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)

class ToSetenceTest < Minitest::Test

  def test_three_words
    assert_equal 'ruby, js and css', to_sentence(['ruby', 'js', 'css'])
  end

  def test_one_word
    assert_equal 'ruby', to_sentence(['ruby'])
  end

  def test_empty_array
    assert_equal '', to_sentence([])
  end

  def test_two_words
    assert_equal 'ruby and js', to_sentence(['ruby', 'js'])
  end

  def test_four_words
    assert_equal 'a, b, c and d', to_sentence(['a', 'b', 'c', 'd'])
  end

  def test_with_numbers
    assert_equal '1, 2 and 3', to_sentence([1, 2, 3])
  end

  def test_nil
    assert_equal '', to_sentence()
  end
end

#to sentence(array_of_items) #=> ;rbuy, js and css'