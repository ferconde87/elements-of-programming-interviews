def count_bits(x)
  num_bits = 0
  while x > 0 do
    num_bits += x & 1
    x >>= 1
  end
  num_bits
end

x = 27

puts "Count bits of #{x} is #{count_bits(x)}"

# pre: x > 0
def print_bits(x)
  result = ""
  while x > 0 do
    result += x & 1 == 1 ? '1' : '0'
    x >>= 1
  end
  result.reverse
end

puts "Binary representation of #{x} is #{print_bits(x)}"
x = 1456
puts "Binary representation of #{x} is #{print_bits(x)}"

def bits_to_number(str)
  result = 0
  exp = str.size - 1
  str.split("").each do |c|
    result += (1 << exp) if c == '1'
    exp -= 1
  end
  result
end

def bits_to_number2(str)
  result = 0
  exp = str.size - 1
  for c in str.split("")
    result += (1 << exp) if c == '1'
    exp -= 1
  end
  result
end

str = "10110110000"

puts "String bits to number: from #{str} to number #{bits_to_number(str)}"
puts "String bits to number: from #{str} to number #{bits_to_number2(str)}"


puts "Using bits_to_number Binary representation of negative numbers....."
x = -16
puts "Binary representation of #{x} is #{print_bits(x)}"
x = -4
puts "Binary representation of #{x} is #{print_bits(x)}"

# Take a number (positive, 0 or negative) and return its binary representation in 32 bits
def binary_representation(x)
  sign = '0'
  if x < 0
    sign = '1'
    x *= -1 # make x positive
  end
  result = ''
  while x > 0 do
    result += (x & 1) == 1 ? '1' : '0'
    x >>= 1
  end
  result.reverse!
  fill_size = 31 - result.size
  sign + '0'*fill_size + result
end

x = -16
puts "Binary representation of #{x} is #{binary_representation(x)}"
x = -4
puts "Binary representation of #{x} is #{binary_representation(x)}"


def basic_math
  x = -34.5
  y = 50
  a = 4
  b = 3
  puts("abs(#{x}) = #{x.abs}")
  puts("[#{x},#{y}].min) = #{[x,y].max}")
  puts("[#{x},#{y}].max) = #{[x,y].min}")
  puts("#{a}.pow(#{b})) = #{a.pow(b)}")
  puts("#{a}**#{b}) = #{a**b}")
  puts("sqrt(#{a}) = #{Integer.sqrt(a)}")
  puts("sqrt(#{a}) = #{Math::sqrt(b)}")
end

basic_math
