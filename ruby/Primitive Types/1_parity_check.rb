require_relative 'helper'

include Helper

# pre: given an string with 1s and 0s
# post: return if the parity of the string
def parity_check_bf(str)
  ans = 0
  for c in str.split("")
    ans += 1 if c == '1'
  end
  ans % 2
end

def parity(num)
  ans = 0
  while num != 0
    ans ^= num & 1
    num >>= 1
  end
  ans
end

# O(log bit-size(num))
def parity32(num)
  num ^= num >> 16
  num ^= num >> 8
  num ^= num >> 4
  num ^= num >> 2
  num ^= num >> 1
  num & 1
end

a = "101011001"
b = "101011011"
puts "parity_check_bf(#{a}) = #{parity_check_bf(a)}"
puts "parity_check_bf(#{b}) = #{parity_check_bf(b)}"
a = 31278
b = 31276
puts "parity_check_bf(#{a}) = #{parity(a)}"
puts "parity_check_bf(#{b}) = #{parity(b)}"

puts "parity_check_bf(#{a}) = #{parity32(a)}"
puts "parity_check_bf(#{b}) = #{parity32(b)}"

def propagate_right_most_1(x)
  puts(binary_representation(x))
  x = x | (x-1)
  puts(binary_representation(x))
end

propagate_right_most_1(a)
propagate_right_most_1(bits_to_number("01010010000"))

def x_mod_a_power_of_2(x, y)
  puts(x & (y-1))
end

x_mod_a_power_of_2(77,64)

def x_is_power_of_2?(x)
  puts(x & (x-1) == 0)
end

x_is_power_of_2?(1024)
x_is_power_of_2?(1023)
x_is_power_of_2?(758)
