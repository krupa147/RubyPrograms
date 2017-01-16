<<<<<<< HEAD
class Raindrops  
  def self.convert(num)		
	text = ""
	text += "Pling" if(num%3==0)
    text += "Plang" if(num%5==0)
    text += "Plong" if(num%7==0)
    if text!=""
      return text
    else 
      return "#{num}"
    end    
  end
end
=======
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
>>>>>>> 4ed507f8cda70ce91e6e298f345e846f5b607056
