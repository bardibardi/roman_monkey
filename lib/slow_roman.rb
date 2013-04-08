require_relative 'roman_numeral'

module RomanNumeral

  DIGIT_TO_I = I_TO_DIGIT.invert

  def self.next_roman_digit_of_size r, size
    len = r.length
    rn = r.slice(0, size)
    v = DIGIT_TO_I[rn.to_sym]
    return nil unless v
    tail = r.slice(size, len - size)
    tail = nil if '' == tail
    [v, tail]
  end

  def self.next_roman_digit r
    result = next_roman_digit_of_size r, 4
    return result if result
    result = next_roman_digit_of_size r, 3
    return result if result
    result = next_roman_digit_of_size r, 2
    return result if result
    next_roman_digit_of_size r, 1
  end

  def self.roman_to_i r
    return nil unless r
    rest = r.to_s
    return nil if 0 == rest.length
    lastv = 10000
    acc = 0
    while rest
      v, rest = next_roman_digit(rest)
      return nil unless v
      return nil unless lastv.to_s.length > v.to_s.length
      acc += v
      lastv = v
    end
    return nil if 0 == acc
    acc
  end

  class << self
    alias :slow_roman_to_i :roman_to_i
  end

end # RomanNumeral

