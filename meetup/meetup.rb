require 'date'
class Meetup
  def initialize(month,year)
    @month = month
    @year = year
  end
  def day(day,schedule)
     result = []
     month_length = [31,28,31,30,31,30,31,31,30,31,30,31]
     (1..month_length[@month-1]).each do |i|
      result.push(i) if Time.new(@year,@month,i).strftime('%A').downcase == day.to_s
      end   
      case schedule
      when :teenth
        (13..19).each do |i|
          return Date.new(@year, @month,i) if result.include?(i) 
        end
      when :first
        Date.new(@year, @month,result.first)
      when :second
      	Date.new(@year, @month,result[1])
      when :third
      	Date.new(@year, @month,result[2])
      when :fourth
      	Date.new(@year, @month,result[3])
      when :last
        Date.new(@year, @month,result.last)
      end
  end
end
