class Array

  def keep(&block)
    result = []
    array = self.map(&block)
    (0..array.length-1).each do |i|
      result.push(self[i]) if array[i] == true
    end
    result
  end

  def discard(&block)
    array = self.map(&block)
    result = []
    (0..array.length-1).each do |i|
      result.push(self[i]) if array[i] == false
    end
    result
  end

end

