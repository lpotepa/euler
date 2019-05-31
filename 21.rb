def solution(n)
  amicable = []
  memo = {}
  count = 0
  (1..n-1).each do |i|
    memo[i] = divisors(i).inject(&:+)
  end
  memo.each_pair do |k,v|
    if k == memo[v] && k != v
      count += (k + v)
      memo.delete(v)
    end
  end
  count
end

def divisors(n)
  divisors = []
  (1..Math.sqrt(n)).each do |i|
    if n%i == 0
      if (n/i == i)
        divisors << i
      else
        divisors << i
        divisors << n/i unless n/i == n
      end
    end
  end
  divisors.sort
end
