require_relative 'fast_roman'

class Object

  def i_to_roman
    RomanNumeral::i_to_roman self
  end

  def roman_to_i
    RomanNumeral::roman_to_i self
  end

  def roman?
    roman_to_i
  end

end

