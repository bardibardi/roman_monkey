Gem::Specification.new do |s|
  s.name = 'roman_monkey'
  s.version = '1.0.0'
  s.date = '2013-04-07'
  s.summary = "simple roman numerals from 1 to 3999"
  s.description = "roman_monkey is a set of simple tools for formatting the numbers from 1 to 3999 as roman numerals, as well as, converting and validating the roman numerals themselves."

  s.authors = ['Bardi Einarsson']
  s.email = ['bardi@hotmail.com']
  s.homepage = 'https://github.com/bardibardi/roman_monkey'
  s.required_ruby_version = '>= 1.9.2'
  s.add_development_dependency('rspec', '~> 2.11')

  s.files = %w(
.gitignore
Gemfile
LICENSE.md
README.md
roman_monkey.gemspec
lib/roman_numeral.rb
lib/slow_roman.rb
lib/fast_roman.rb
lib/roman_monkey.rb
lib/fast_roman_monkey.rb
spec/roman_monkey_spec.rb
spec/support/no_should_rspec.rb
spec/support/roman_test.rb
)
end

