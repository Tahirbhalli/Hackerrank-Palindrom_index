def palindrom?(str)
  return true if str == str.reverse

  false
end

def palindromeIndex(str)
  return -1 if palindrom?(str) == true

  a = str.reverse
  str.length.times do |i|
    next unless str[i] != a[i]
    return i if palindrom?(str.slice(0, i) + str.slice(i + 1, str.length))
    return (str.length - i - 1) if palindrom?(a.slice(0, i) + a.slice(i + 1, a.length))
  end
end
