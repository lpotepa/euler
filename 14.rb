def solution(n)
  max = 0
  number = 0
  (n/2..n-1).each do |i|
    res = chain(i)
    if res > max
      max = res
      number = i
    end
  end
  number
end

def chain(n)
  return hash[n] if hash[n]
  if n%2 == 0
    hash[n] = 1 + chain(n/2)
  else
    hash[n] = 2 + chain((3 * n + 1)/2)
  end
  hash[n]
end

def hash
  @hash ||= {1 => 1}
end
