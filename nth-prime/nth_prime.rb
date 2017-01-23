require 'prime'
class Prime
def self.nth(index)
		if index<=0
			raise ArgumentError
		else
			prime_numbers = Prime.first index
    	prime_numbers[index-1]
		end
	end
end
