# O(n) space
def even_odd_n_space(ar)
  result = []
  for x in ar do
    result.push(x) if x % 2 == 0
  end
  for x in ar do
    result.push(x) if x % 2 == 1
  end
  result
end

def even_odd_n_space2(ar)
  even = ar.filter{|x| x % 2 == 0}
  odd = ar.filter{|x| x % 2 != 0}
  even + odd
end

# O(1) space
def even_odd(ar)
  i = 0
  j = ar.size - 1
  while i < j do
    i+=1 while ar[i] % 2 == 0 && i < j
    j-=1 while ar[j] % 2 != 0 && j > i
    ar[i], ar[j] = ar[j], ar[i]
  end
  ar
end


ar = [2,9,3,4,5,8,2,1]
puts(even_odd_n_space(ar).join(","))
ar = [2,9,3,4,5,8,2,1]
puts(even_odd_n_space2(ar).join(","))
ar = [2,9,3,4,5,8,2,1]
puts(even_odd(ar).join(","))
ar = [2,9,3,4,5,8,2,1]
