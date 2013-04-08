require_relative 'roman_numeral'

module RomanNumeral

  ROMANS = (1...4000).reduce([nil],&->(a,i){a<<slow_i_to_roman(i).to_sym})
  INTS = ROMANS.each_with_index.reduce({},&->(h,p){h[p[0]]=p[1];h})

  def self.i_to_roman i
    sym = ROMANS[i.to_i]
    return nil unless sym
    sym.to_s
  end

  def self.roman_to_i r
    r = r.to_s.to_sym unless Symbol == r.class
    INTS[r]
  end

end

