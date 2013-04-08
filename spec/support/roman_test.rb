require_relative '../../lib/roman_monkey'
require_relative '../../lib/fast_roman'

module RomanNumeral

  def self.reversible?
    (1...4000).each do |i|
      s = i_to_roman i
      return nil unless s
      i2 = roman_to_i s
      return nil unless i2
      return nil unless i == i2
    end
    true
  end

  def self.slow_reversible?
    (1...4000).each do |i|
      s = slow_i_to_roman i
      return nil unless s
      i2 = slow_roman_to_i s
      return nil unless i2
      return nil unless i == i2
    end
    true
  end

  def self.reversible2?
    (1...4000).each do |i|
      s = i_to_roman i
      unless s
        p 'i'
        p i
        return nil unless s
      end
      i2 = roman_to_i s
      unless i2
        p 's'
        p s
        return nil unless i2
      end
      unless i == i2
        p 'i'
        p i
        p 'i2'
        p i2
        return nil unless i == i2
      end
    end
    true
  end

end # RomanNumeral

