require 'minitest/autorun'
require_relative 'randompairsdiff.rb'

class Testing < Minitest::Test
	def test_pairs_with_2_elements
		pair = random_pair(["apple", "orange"])
		assert_equal(0, pair.count)
	end
	def test_pairs_with_5_elements
		pair = random_pair(["apple", "orange", "grape", "pear", "lemon"])
		assert_equal(1, pair.count)
	end
	def test_pairs_with_4_elements
		pair = random_pair(["apple", "orange", "grape", "pear", "lemon", "bush", "tree", "flower", "stick", "leaf", "dog", "cat", "mouse"])
		assert_equal(3, pair.count)
	end
	def test_more_pairs_with_4_elements
		pair = random_pair(["apple", "orange", "grape", "pear", "lemon", "bush", "tree", "flower", "stick", "leaf", "dog", "cat", "mouse", "bird", "moon", "lake", "fire", "rock", "sun"])
		assert_equal(4, pair.count)
	end
	def test_more_pairs
		pair = random_pair(["apple", "orange", "grape", "pear", "lemon", "bush", "tree", "flower", "stick", "leaf", "dog", "cat", "mouse", "bird", "moon", "lake", "fire", "rock", "sun", "sky", "cloud", "rain"])
		assert_equal(5, pair.count)
	end
end