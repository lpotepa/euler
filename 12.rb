def solution(n)
  i = 1
  while true
    res = exponents(prime_factors(triangle_number(i))).inject(:*) || 0  
    return triangle_number(i) if res > n
    i += 1
  end
end

def triangle_number(n)
  n*(n+1)/2
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

def prime_factors(n, factors = nil)
  factors ||= []
  (2..n).each do |i|
    if n%i == 0
      factors << i
      prime_factors(n/i, factors)
      break
    end
  end
  factors
end

def exponents(arr)
  exponents = []
  current = arr.first
  length = arr.length
  i = 0
  arr.each_with_index do |el, index|
    if current != el
      exponents << i
      i = 1
      current = el
    else
      i += 1
    end
    if index == length-1
      exponents << i 
    end
  end
  exponents.map { |y| y+1 } 
end
