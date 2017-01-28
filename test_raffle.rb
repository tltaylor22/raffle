require 'minitest/autorun'
require_relative 'raffle.rb' 

# This function takes a number and an array of numbers, and returns a boolean: true if the number is in the array, and false if not.
class TestRaffleArray < Minitest::Test 
	
	def test_create_empty_array
		assert_equal(Array, [].class)
	end	

	# A good first test could be a number and an empty array, which should return false.
	def test_empty_array_not_equal_1
		assert_equal(false, Array == 1)
	end

	def test_create_raffle_numbers
		raffle = create_raffle_array(['1234', '1235', '1236', '3456', '3457', '3458'])
		assert_equal(true, (raffle.include? '1234'))
	end	

end		