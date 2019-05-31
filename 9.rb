def solution(n)
  return 0 if n%2 != 0
  results = []
  divisors = divisors(n/2)
  divisors.each do |x|
    break if x > Math.sqrt(n/2)
    divisors.each do |s|
      if x < s && s < 2*x && n%(x*s) == 0
        y = s -x
        k = ((n/2)/x)/s
        results <<  [k*(x*x-y*y), 2*k*x*y, k*(x*x+y*y)].inject(&:*)
      end
    end
  end
  results
end

def divisors(n)
  divisors = []
  (1..Math.sqrt(n)).each do |i|
    if n%i == 0
      if (n/i == i)
        divisors << i
      else
        divisors << i
        divisors << n/i
      end
    end
  end
  divisors.sort
end
