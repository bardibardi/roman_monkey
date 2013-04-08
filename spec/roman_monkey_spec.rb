require 'support/no_should_rspec'
require 'support/roman_test'

describe RomanNumeral do

  it "should, for all roman numerals, convert integers to roman numerals and back" do
    expect(RomanNumeral.reversible?).to be_true
  end

  it "should, for all roman numerals, slowly convert integers to roman numerals and back" do
    expect(RomanNumeral.slow_reversible?).to be_true
  end

end

describe Object do

  it "should accept i_to_roman for number compatible types" do
    expect(1.i_to_roman).to eq('I')
    expect(1.9999.i_to_roman).to eq('I')
    expect('1 potatoes'.i_to_roman).to eq('I')
    expect(3999.i_to_roman).to eq('MMMCMXCIX')
    expect('3999 marbles'.i_to_roman).to eq('MMMCMXCIX')
  end

  it "should accept roman_to_i for roman numeral compatible types" do
    expect(:I.roman_to_i).to eq(1)
    expect('I'.roman_to_i).to eq(1)
    expect(:MMMCMXCIX.roman_to_i).to eq(3999)
    expect('MMMCMXCIX'.roman_to_i).to eq(3999)
  end

  it "should have i_to_roman return null for instances not in (1...4000)" do
    expect(0.i_to_roman).to be_nil
    expect('no potatoes'.i_to_roman).to be_nil
    expect(4000.0.i_to_roman).to be_nil
    expect(4000.i_to_roman).to be_nil
    expect('4000 marbles'.i_to_roman).to be_nil
  end

  it "should have roman_to_i return null for instances not in (:I..:MMMCDXCIX)" do
    expect(''.roman_to_i).to be_nil
    expect(nil.roman_to_i).to be_nil
    expect(:MMMM.roman_to_i).to be_nil
    expect(:CCD.roman_to_i).to be_nil
    expect(:LM.roman_to_i).to be_nil
  end

end

