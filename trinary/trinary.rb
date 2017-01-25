class Trinary
  
  def initialize(num)
    @num_to_convert = num
  end

  def to_decimal
    return 0 if @num_to_convert =~ /[a-zA-Z3-9]/
    decimal = 0
    input = @num_to_convert.reverse
    (0..input.length-1).each do |i|
      if input.chars[i] == "1"
        decimal +=  3 ** i
      elsif input.chars[i] == "2"
        decimal +=  (3 ** i) * 2
      end 
    end
    decimal
  end

end
