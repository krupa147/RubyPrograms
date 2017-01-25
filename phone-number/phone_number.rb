class PhoneNumber

  def initialize(number)
    @phone_number = number.to_s
  end

  def number
    number = @phone_number.delete("()-.a-z ")
    length = number.length
    return "0000000000" if @phone_number =~ /[a-z]/
    case length
    when 10 
      corrected_number = number
    when 11
      corrected_number = format_number(number)
    else
      corrected_number = "0000000000"
    end
    corrected_number
  end

  def area_code
    @phone_number[0..2]
  end

  def to_s
     phone_array=[]
     phone_array.push('(',@phone_number[-10..-8],') ',@phone_number[-7..-5],'-',@phone_number[-4..-1])
     phone_array.join('')
  end

  def format_number(number)
    if(number[0] == "1")
      number = number[1..10]
    else
      number = "0000000000"
    end
  end

end