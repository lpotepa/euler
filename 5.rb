def solution(n)
  factors = []
  (2..n).map do |i|
    all_prime_factors(i)
  end.each do |arr|
    next if arr.size == 2 || arr.size == 0
    factors << find_most_occuring(arr)
  end
  factors.inject(&:*)
end

def find_most_occuring(arr)
  freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  arr.max_by { |v| freq[v] }
end

def all_prime_factors(n)
  prime_numbers(n).select { |i| n%i == 0 }
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
  (2..n).select { |el| primes[el-2] }
end
