
class Hamming   
  

  def self.compute(arg1,arg2)
    arg1_lenth = arg1.length
    arg2_lenth = arg2.length

    
    
    if arg1_lenth != arg2_lenth      
      raise ArgumentError
    else
      cal = 0
      
      (0..arg1_lenth).each do|i|
        if arg1[i] != arg2[i]
          cal = cal + 1
        end
      end
      return cal
    
        
  end
  end
end

  