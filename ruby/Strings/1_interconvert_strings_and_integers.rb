def from_char_to_number
  dict = {}
  dict['1'] = 1
  dict['2'] = 2
  dict['3'] = 3
  dict['4'] = 4
  dict['5'] = 5
  dict['6'] = 6
  dict['7'] = 7
  dict['8'] = 8
  dict['9'] = 9
  dict['0'] = 0
  dict
end

def from_digit_to_char
  dict = {}
  dict[1] = '1'
  dict[2] = '2'
  dict[3] = '3'
  dict[4] = '4'
  dict[5] = '5'
  dict[6] = '6'
  dict[7] = '7'
  dict[8] = '8'
  dict[9] = '9'
  dict[0] = '0'
  dict
end

def char_to_int(c)
  c.ord - "0".ord
end

def int_to_char(x)
  ("0".ord+x).chr
end

def to_number(str)
  start = 0
  sign = 1
  if str[0] == '-'
    start = 1
    sign = -1
  end
  table = from_char_to_number
  result = 0
  (start..str.size-1).each do |i|
    result *= 10
    result += char_to_int(str[i])
  end
  result*sign
end

def to_string(number)
  return "0" if number == 0
  table = from_digit_to_char
  result = ""
  sign = ""
  if number < 0
    sign << "-"
    number *= -1
  end
  while number != 0 do
    cur = number % 10
    number /= 10
    result << int_to_char(cur)
  end
  result << sign
  result.reverse
end

puts(to_number("478"))
puts(to_string(478))
puts(to_number("-2234478"))
puts(to_string(-2234478))
puts(to_number("0"))
puts(to_string(0))
