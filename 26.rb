def solution
  highest = {"d" => 1, "count" => 1}

  (1..499).each do |i|
    x     = i * 2 + 1
    count = divide 1, x
    if count > highest['count']
      highest = {"d" => x, "count" => count}
    end
  end

  puts highest["d"]
end

def divide n, d, repo = []
  return repo.size - repo.index(n) if repo.include? n
  divide 10 * (n - (n / d) * d), d, repo << n
end

def prime_numbers(n)
  primes = Array.new(n-1, true)
  (2..Math.sqrt(n)).each do |i|
    if primes[i]
      (i**2).step(n, i).each do |x|
        primes[x-2] = false
      end
    end
  end
  primes
  (7..n).select { |el| primes[el-2] }
end

def find_repeating_pattern(s)
  s1 = ""
  s2 = ""
  s.chars
end

def longest_repeating_substring(str, str2 = "")
  return str if str.length == 1
  length = str.length
  res_length = 0
  index = 0
  lcsre = Array.new(length) { Array.new(length, 0) }
  for i in (1..length) do
    for j in (i+1..length) do
      if str[i-1] == str[j-1] && (j-i) > lcsre[i-1][j-1]
        lcsre[i][j] = lcsre[i-1][j-1] + 1
        if lcsre[i][j] > res_length
          res_length = lcsre[i][j]
          index = [i, index].max
        end
      else
        lcsre[i][j] = 0
      end
    end
  end
  if res_length > 0
    res = longest_repeating_substring(str[index-res_length..index-1], str)
  else
    return str
  end
end
