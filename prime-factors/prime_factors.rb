class PrimeFactors

  def self.for(num)
    i = 2
    factors = []
    while num > 1      
      if num % i ==0
        num = num / i        
        factors.push(i)
      else
        i += 1
      end
    end    
    factors  
  end

end