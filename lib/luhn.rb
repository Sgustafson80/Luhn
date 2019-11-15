module Luhn
  def self.is_valid?(number)
    number = number.to_s.chars.reverse
    number = number.map(&:to_i)
    count = 0
    number.each_with_index do |x, i|
      if i.odd?
        x = x * 2
        if x > 9
          x = x-9
        end
      end
      count = count + x
    end

    return count%10 == 0
      
   end
end