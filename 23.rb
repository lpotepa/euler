def solution
  n = 28123
  non_abundant_sums = (1..n).to_a - abundant_sums
  non_abundant_sums.inject(&:+)
end

def is_abundant?(n)
  return false if n < 12
  return false if n % 2 != 0 && n < 945
  sum = 0
  (1..Math.sqrt(n)).each do |i|
    if n%i == 0
      if (n/i == i)
        sum += i
      else
        sum += i
        sum += n/i unless n/i == n
      end
    end
  end
  sum > n
end

def abundant_numbers
  n = 28123
  (1..n).select do |i|
    is_abundant?(i)
  end
end

def abundant_sums
  i = 0
  n = 28123
  sums = []
  abundants = abundant_numbers
  length = abundants.length
  abundants.each do |x|
    abundants[i..length].each do |y|
      sum = x+y
      sums << sum if sum <= n
    end
    i += 1
  end
  sums.uniq
end
