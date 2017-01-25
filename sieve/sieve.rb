class Sieve
  def initialize num
  	@num = num
  end
  def primes
    array = []
    result = []
    if(@num<2)
      return []
    elsif(@num == 2)
      return [2]
    else
      (2..@num).each do|i|
        array[i] = true
      end
      (2..array.length-1).each do|i|
        if array[i] == true
          (i+1..array.length-1).each do|j|
            array[j] = false if(j%i == 0)
          end
        end
        result.push(i) if array[i] == true
      end
      return result
    end
  end
end
