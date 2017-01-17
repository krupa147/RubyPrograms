class Acronym
  def self.abbreviate(arg)
    text = arg.chars[0].upcase
    (1..arg.length-1).each do|i|
      text += arg.chars[i].upcase if arg.chars[i-1] == " " || arg.chars[i-1] == "-" || (arg.chars[i-1] =~ /[a-z]/ && arg.chars[i] =~ /[A-Z]/)
    end
    text
  end
end

