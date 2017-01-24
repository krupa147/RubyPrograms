class SumOfMultiples
  def initialize(*arg)
    @input_array = *arg
  end
  def to(num)
    @upto = num
    sum = 0
    array = []
    (0..@input_array.length-1).each do |i|
      (1...@upto).each do |j|
        array.push(j) if j % @input_array[i] == 0 && !array.include?(j)
      end      
    end
    (0..array.length-1).each do|i|
      sum += array[i]
    end
    sum
  end
end

