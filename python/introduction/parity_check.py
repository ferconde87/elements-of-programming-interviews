# pre: given an string with 1s and 0s
# post: return if the parity of the string
def parity_check_bf(str):
  ans = 0
  for c in str:
    ans += 1 if (c == '1') else 0
  return ans % 2

# pre: given an number
# post: return if the parity
def parity(x):
  result = 0
  while x:
    result ^= x & 1
    x >>= 1
  return result
  

a = "101011001"
b = "101011011"
print("parity_check_bf({0}) = {1}".format(a, parity_check_bf(a)))
print("parity_check_bf({0}) = {1}".format(b, parity_check_bf(b)))

a = 31278
b = 31276
print("parity_check_bf({0}) = {1}".format(a, parity(a)))
print("parity_check_bf({0}) = {1}".format(b, parity(b)))

