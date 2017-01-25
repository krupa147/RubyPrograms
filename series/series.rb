class Series

  def initialize(input)
    @num = input
  end

  def slices(slice_into)
    length_upto = @num.length - slice_into 
    result = []
    i = 0
    raise ArgumentError if slice_into > @num.length
    (0..length_upto).each do |i|
      result.push(@num[i..i+slice_into-1])
      i += 1
    end
    result
  end

end