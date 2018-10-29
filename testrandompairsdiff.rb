require 'minitest/autorun'
require_relative 'randompairsdiff.rb'

class Testing < Minitest::Test
	def test_pairs_1
		pair = random_pair(["apple", "orange"])
		assert_equal(1, pair.count)
	end
	def test_pairs_with_odd_count
		pair = random_pair(["apple", "orange", "grape", "pear", "lemon"])
		assert_equal(2, pair.count)
	end
end