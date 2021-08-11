# Spacial complexity O(N)
def is_palindromic?(str)
  str == str.reverse
end

# Spacial complexity O(1)
def is_palindromic2?(str)
  (0..str.size/2).each do |i|
    return false if str[i] != str[~i]
  end
  return true
end

def is_palindromic3?(str)
  (0..str.size/2).all?{|i| str[i] == str[~i]}
end

def is_palindromic4?(str)
  (0..str.size/2).map{|i| str[i] == str[~i]}.all?
end


puts(is_palindromic? "neuquen")
puts(is_palindromic? "pepe")

puts(is_palindromic2? "neuquen")
puts(is_palindromic2? "pepe")

puts(is_palindromic3? "neuquen")
puts(is_palindromic3? "pepe")

puts(is_palindromic4? "neuquen")
puts(is_palindromic4? "pepe")
