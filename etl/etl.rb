class ETL
  def self.transform(old)
    result_hash = Hash.new
    old.each do |key,value|
      (0..value.length-1).each do |i|
        char = value[i].downcase
        result_hash[char] = key
      end
    end
    result_hash
  end
end
