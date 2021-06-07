input=ENV['ex']

number = input[0..-2]
number = "0#{number}" if number.size == 1
letter = input[-1]
letter == 'a' ? type = '' : type = '2'

require "./#{number}/main#{type}.rb"

result = Module.const_get("Main#{number}#{letter}").run

puts result