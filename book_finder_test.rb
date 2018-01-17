require "minitest/autorun"
require_relative "book_finder.rb"  

class TestMath < Minitest::Test  
	def test_assert_that_1_equals_1
		
		assert_equal(1,1)
	end

	def test_isbn #tests that the isbn is taken in properly
		assert_equal(1234567891023,isbn(1234567891023))

	
	end	
end