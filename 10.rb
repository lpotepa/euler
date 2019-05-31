def solution(n)
  prime_numbers(n).inject(&:+)
end

def prime_numbers(n)
  primes = Array.new(n-1, true)
  (2..Math.sqrt(n)).each do |i|
    if primes[i]
      (i**2).step(n, i).each do |x|
        primes[x] = false
      end
    end
  end
  primes
  (2..n).select { |el| primes[el] }
end
