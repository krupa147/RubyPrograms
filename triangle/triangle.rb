class Triangle
  def initialize(array_of_side)
    @side1 = array_of_side[0]
    @side2 = array_of_side[1]
    @side3 = array_of_side[2]
  end
  def istraiangle?
    true if (@side1<=@side2+@side3) && (@side2<=@side1+@side3) && (@side3<=@side2+@side1)
  end 
  def equilateral?  
    true if (@side1==@side2) && (@side1==@side3) && @side1!=0
  end
  def isosceles?
    if ((@side1==@side2) || (@side1==@side3) || (@side2==@side3)) && istraiangle?
      return true
    else
      return false
    end
  end
  def scalene?
    if ((@side1!=@side2) && (@side1!=@side3) && (@side2!=@side3)) && istraiangle?
      return true
    else
      return false
    end
  end
end

