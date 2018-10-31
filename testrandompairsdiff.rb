require 'minitest/autorun'
require_relative 'randompairsdiff.rb'

class Testing < Minitest::Test
	def test_pairs_with_2_elements
		pair = random_pair(["apple", "orange"])
		assert_equal(1, pair.count)
	end
	def test_pairs_with_5_elements
		pair = random_pair(["apple", "orange", "grape", "pear", "lemon"])
		assert_equal(2, pair.count)
	end
	def test_pairs_with_4_elements
		pair = random_pair(["apple", "orange", "grape", "pear", "lemon", "bush", "tree", "flower", "stick", "leaf", "dog", "cat", "mouse"])
		assert_equal(6, pair.count)
	end
	def test_more_pairs_with_4_elements
		pair = random_pair(["apple", "orange", "grape", "pear", "lemon", "bush", "tree", "flower", "stick", "leaf", "dog", "cat", "mouse", "bird", "moon", "lake", "fire", "rock", "sun"])
		assert_equal(9, pair.count)
	end
	def test_more_pairs
		pair = random_pair(["apple", "orange", "grape", "pear", "lemon", "bush", "tree", "flower", "stick", "leaf", "dog", "cat", "mouse", "bird", "moon", "lake", "fire", "rock", "sun", "sky", "cloud", "rain"])
		assert_equal(11, pair.count)
	end
	def test_pairs_of_numbers
		pair = random_pair([1, 2, 3, 4, 5, 6, 7, 8, 9])
		assert_equal(4, pair.count)
	end
    
end