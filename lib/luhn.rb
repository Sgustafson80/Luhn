module Luhn
  def self.is_valid?(number)
    card = number.to_s.split('')

    i = card.length - 2
    while i >= 0
      card[i]=card[i].to_i*2

      if card[i].to_i>9 then
        card[i]=card[i].to_i-9
      end
      i = i-2
    end

    count = 0
    card.each do |x|
      count = x.to_i + count
    end

    if count%10 == 0
      return true
    else
      return false
    end

  end
end