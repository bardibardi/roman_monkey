module RomanNumeral

  I_TO_DIGIT = {
    1 => :I,
    2 => :II,
    3 => :III,
    4 => :IV,
    5 => :V,
    6 => :VI,
    7 => :VII,
    8 => :VIII,
    9 => :IX,
    10 => :X,
    20 => :XX,
    30 => :XXX,
    40 => :XL,
    50 => :L,
    60 => :LX,
    70 => :LXX,
    80 => :LXXX,
    90 => :XC,
    100 => :C,
    200 => :CC,
    300 => :CCC,
    400 => :CD,
    500 => :D,
    600 => :DC,
    700 => :DCC,
    800 => :DCCC,
    900 => :CM,
    1000 => :M,
    2000 => :MM,
    3000 => :MMM
  }

  def self.high_digit_value i
    return nil unless -1 < i
    return [0, 0] if 0 == i
    shift = 0
    v = i
    while v > 9
      v = v/10
      shift += 1
    end
    while shift > 0
      v *= 10
      shift -= 1
    end
    [v, i - v]
  end

  def self.i_to_roman i
    r = []
    rest = i.to_i
    while (digit_value, rest = high_digit_value(rest); digit_value > 0)
      roman_digit = I_TO_DIGIT[digit_value]
      return nil unless roman_digit
      r << roman_digit.to_s
    end
    return nil if 0 == r.length
    r.join ''
  end

  class << self
    alias :slow_i_to_roman :i_to_roman
  end

end # RomanNumeral

