class RunLengthEncoding
	def self.encode(encode_input)
		@input = encode_input
		count=1
		text = ""
		(1..@input.length).each do|i|
			#puts @input.chars[i]
			if @input.chars[i] == @input.chars[i-1]
				count += 1
			else
				if count == 1
					text += @input.chars[i-1]
				else
					text += count.to_s + @input.chars[i-1]
				end
				count = 1
			end
		end
		text
	end
	def self.decode(decode_input)
		@input = decode_input
		text = ""
		count = 0
		(0..@input.length-1).each do |i|
			c = @input.chars[i]
			if c.to_i>0 && c.to_i<10
				count = count * 10 + c.to_i
			else
				if count == 0 && c.to_i
					text += c
				else
					text += c * count
					count = 0
				end
			end
		end
		text
	end
end

