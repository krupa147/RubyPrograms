class Phrase
	def initialize(input)
		@input = input
	end
	def word_count
		input_str = @input.gsub(/,/," ")
		array_input = input_str.split(" ")
		input_hash = {}
		(0..array_input.length-1).each do |i|
			word  = array_input[i].delete(":!@#{}$%^&*();<>?,.")
			word = word.downcase
			if word[0] == "'" && word[-1] == "'"
				 word[0] = ''
+        word[-1] = ''
			end
   		if input_hash.key?(word) 
   			input_hash[word] = input_hash[word] + 1
   		else
		  	input_hash[word] = 1
			end
		end
		input_hash
	end
end
