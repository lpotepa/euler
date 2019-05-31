def solution(n)
  i = 1
  candidate = 1
  until i == n
    candidate += 2
    if is_prime?(candidate)
      i += 1
    end
  end
  candidate
end

def is_prime?(n)
  return false if n == 1
  return true if n < 4
  return false if n%2 == 0
  return true if n < 9
  return false if n%3 == 0
  r = Math.sqrt(n).floor
  f = 5
  while f <= r
    return false if n%f == 0
    return false if n%(f+2) == 0
    f += 6
  end
  true
end
