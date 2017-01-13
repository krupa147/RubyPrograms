class Squares
  def initialize(num)
    @num = num
    sum_of_num=0
    sum_of_square=0
    (0..@num).each do |i|
        sum_of_num = sum_of_num + i
        sum_of_square = sum_of_square + i*i
      end
      @sum_of_num=sum_of_num*sum_of_num
      @sum_of_squares=sum_of_square
  end
  def square_of_sum
    @sum_of_num
  end
  def difference
    @sum_of_num-@sum_of_squares
  end
  def sum_of_squares
    @sum_of_squares
  end
end
