class Complement
  def self.of_dna(dna)
    compliment = ""
    (0..dna.length-1).each do |i|
      c = dna[i]
      case c
      when 'G'
        compliment+="C"
      when 'C'
	compliment+="G"
      when 'T'
	compliment+="A"
      when 'A'
	compliment+="U"
      else
	return compliment = ""
      end
    end
    return compliment
  end
end

