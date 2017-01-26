class School   

  def initialize
    @student_hash = Hash.new
  end    

  def add(name,grade)    
    @student_hash[name] = grade
  end  

  def students(num)
    result = names_by_grade(num)
    if result == nil 
      []
    else
      result
    end   
  end

  def students_by_grade
    result = []
    array = @student_hash.values.uniq.sort
    (0..array.length-1).each do |i|
      hash = Hash.new
      hash[:grade] = array[i]
      hash[:students] = names_by_grade(array[i])
      result.push(hash)  
    end    
    result
  end

  def names_by_grade(grade)
     result_name = @student_hash.select{|key,value|@student_hash[key] == grade}
     result_name.keys.sort
  end
  
end
