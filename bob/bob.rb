class Bob
  def self.hey(input)
    if input.strip.length==0
      "Fine. Be that way!"
    elsif (input =~/[a-z0-9]/) && (input.end_with? "?")
      "Sure."
    elsif (input =~/[0-9]/) && input == input.downcase
      "Whatever."
    elsif input == input.upcase
      "Whoa, chill out!"
    else
      "Whatever."
    end
  end
end