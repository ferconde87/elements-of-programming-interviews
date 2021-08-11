# Time complexity O(N)
# Spacial complexity O(N)
def dutch_national_flag(ar, index)
  left = []
  right = []
  mid = Array.new(ar.count(ar[index]),ar[index])
  for x in ar do
    if x < ar[index]
      left.push(x)
    elsif x > ar[index]
      right.push(x)
    end
  end
  left + mid + right
end

# Time complexity O(N)
# Spacial complexity O(1)
def dutch_national_flag2(ar, index)
  i = 0
  j = ar.size - 1
  x = ar[index]
  while i < j do
    i += 1 while ar[i] <= x && i < j
    j -= 1 while ar[j] > x && j > i
    ar[i], ar[j] = ar[j], ar[i]
  end
  i = 0
  j-= 1
  while i < j do
    i += 1 while ar[i] < x && i < j
    j -= 1 while ar[j] == x && j > i
    ar[i], ar[j] = ar[j], ar[i]
  end
  ar
end


ar = [2,3,5,2,7,3,7,3,2,1,5,7,5,3,2,1,4,2,5,8,7,6,4,9]
index = 5
ans = dutch_national_flag(ar, index) #copy
puts(ans.join(", "))
copy = ar.map(&:clone)
dutch_national_flag2(copy, index) #change ar
puts(copy.join(", "))

