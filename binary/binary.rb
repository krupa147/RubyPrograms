class Binary
  def self.to_decimal(input)
    raise ArgumentError if input =~ /[a-zA-Z2-9]/
    decimal = 0
    input = input.reverse
    (0..input.length-1).each do |i|
      if input.chars[i] == "1"
        decimal +=  2 ** i
      end
    end
    decimal
  end  
end
