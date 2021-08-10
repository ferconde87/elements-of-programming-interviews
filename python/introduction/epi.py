def count_bits(x):
  num_bits = 0
  while x:
    num_bits += x & 1
    x >>= 1
  return num_bits

number = 27

print("Count bits of {0} is {1}".format(number, count_bits(number)))

# number manipultaion
import math

def print_bits(x):
  result = ""
  while x:
    result += '1' if x & 1 else '0'
    x >>= 1
  return result[::-1]

print("Binary representation of {0} is {1}".format(number, print_bits(number)))
number = 1456
print("Binary representation of {0} is {1}".format(number, print_bits(number)))


# refreshing for loop + math.pow
def bits_to_number(str):
  result = 0
  exp = len(str) - 1
  for c in str:
    if c == '1':
      result += 1 << exp
    exp -= 1
  return result

str = "10110110000"
print("String bits to number: from {0} to number {1}".format(str, bits_to_number(str)))

def binary_representation(x):
  sign = '0'
  if x < 0:
    sign = '1'
    x *= -1
  result = ""
  while x > 0:
    result += '1' if x & 1 else '0'
    x >>= 1
  return sign + '0'*(31-len(result)) + result[::-1]

x = -16
print("Binary representation of {0} is {1}".format(x, binary_representation(x)))
x = -4
print("Binary representation of {0} is {1}".format(x, binary_representation(x)))


import math
def basic_math():
  x = -34.5
  y = 50
  a = 4
  b = 3
  print("abs({0}) = {1}".format(x, abs(x)))
  print("min({0},{1}) = {2}".format(x, y, min(x,y)))
  print("max({0},{1}) = {2}".format(x, y, max(x,y)))
  print("pow({0},{1}) = {2}".format(x, y, pow(x,y)))
  print("{0}**{1}) = {2}".format(a, b, a**b))
  print("sqrt({0}) = {1}".format(a, math.sqrt(a)))
  print("sqrt({0}) = {1}".format(b, math.sqrt(b)))

  print("+infinity = {0}".format(float('inf')))
  print("-infinity = {0}".format(float('-inf')))

basic_math()
