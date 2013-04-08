roman\_monkey
================

## Summary

simple roman numerals from 1 to 3999

## Description

roman\_monkey is a set of simple tools for formatting the numbers from 1 to 3999 as roman numerals, as well as, converting and validating the roman numerals themselves.

## Usage

Object instance methods

    require 'roman_monkey'
    # or require 'fast_roman_monkey'
    #   for pre calculated roman numerals

    :i_to_roman
    :roman_to_i
    :roman? # is it a roman numeral?, :roman_to_i equivalent

    irb prompt> require 'roman_monkey'
     => true
    irb prompt> 1999.i_to_roman
     => "MCMXCIX"
    irb prompt> '1999 was a good year'.i_to_roman
     => "MCMXCIX"
    irb prompt> "MCMXCIX".roman_to_i
     => 1999
    irb prompt> :MCMXCIX.roman_to_i
     => 1999
    irb prompt> 'LD'.roman?
     => nil 
    irb prompt> 'CDL'.roman?
     => 450 
    irb prompt> 4000.i_to_roman
     => nil 
    irb prompt> 0.i_to_roman
     => nil 

Simplest usage

    require 'roman_numeral'
    # for :i_to_roman module method

    irb prompt> require 'roman_numeral'
     => true
    irb prompt> RomanNumeral.i_to_roman 3888
     => "MMMDCCCLXXXVIII"

To add roman numeral validation

    require 'slow_roman'
    # for :roman_to_i module method
    # or require 'fast_roman'
    #   for pre calculated roman numerals

    irb prompt> require 'slow_roman'
     => true
    irb prompt> RomanNumeral.i_to_roman 3888
     => "MMMDCCCLXXXVIII"
    irb prompt> RomanNumeral.roman_to_i "MMMDCCCLXXXVIII"
     => 3888

## Requirements

Most likely any recent version of 1.9 ruby works.

## Test with rspec ~> 2.11, rspec -fd

Try the software in irb:

    irb prompt> load 'spec/support/roman_test.rb'

The author uses DbVisualizer 9.0.5 and irb to try out the space cadets.

Note, to find the gem installation directory:

    irb prompt> require 'roman_monkey'
    irb prompt> $".grep(/roman_monkey/)[0]
    irb prompt> Object.new.method(:i_to_roman).source_location
    irb prompt> exit

## License

Copyright (c) 2013 Bardi Einarsson. Released under the MIT License.  See the [LICENSE][license] file for further details.

[license]: https://github.com/bardibardi/roman_monkey/blob/master/LICENSE.md

