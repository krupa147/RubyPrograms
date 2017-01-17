class Acronym
  def self.abbreviate(arg)
  	text = arg.chars[0].upcase
    (1..arg.length-1).each do|i|
      if arg.chars[i-1] == " " || arg.chars[i-1] == "-" || (arg.chars[i-1] =~ /[a-z]/ && arg.chars[i] =~ /[A-Z]/)
        text += arg.chars[i].upcase
      end
    end
    text
  end
end

