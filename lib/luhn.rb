module Luhn
  def self.is_valid?(number)
    card = number.split("")

    i = 0
    while i < 16 [do]
      card[i]=card[i].to_i*2

      if card[i].to_i>=10 then
        card[i]=card[i].to_i-9
      end
      i = i+2
    end

    count = 0
    card.each do |x|
      count = card[x].to_i + count
    end

  end
end