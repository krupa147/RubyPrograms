class Pangram  
  def self.pangram?(phrase)
    str = phrase.downcase
    count = 0
    ('a'..'z').each do |i|
      if(!(str.include?i))
        return false
      else
        count += 1
      end
    end
    return true if(count==26)  
  end
end
