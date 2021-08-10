
module Helper

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

  def bits_to_number(str)
    result = 0
    exp = str.size - 1
    for c in str.split("")
      result += (1 << exp) if c == '1'
      exp -= 1
    end
    result
  end
end
