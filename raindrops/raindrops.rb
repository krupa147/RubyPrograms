class Raindrops  
  def self.convert(num)		
	  text = ""
		if(num%3==0)
      text += "Pling"
    end
    if(num%5==0)
      text += "Plang"
    end
    if(num%7==0)
      text += "Plong"
    end
    if text!=""
      return text
    else 
     	return "#{num}"
    end    
	end
end