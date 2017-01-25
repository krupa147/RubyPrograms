class Grains
	def self.square(num)
		if num > 0 && num < 65			
			return 1 if num == 1
			return 2 ** (num -1)
		else
			raise ArgumentError
		end
	end
	def self.total
		sum = 1
		(2..64).each do |i|
			sum = sum + 2 ** (i-1)
		end
		return sum
	end
end