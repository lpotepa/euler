def solution(a, n)
  f = to_factoradic(n)
  nth = []
  f.to_s.split("").each do |i|
    nth << a.delete_at(i.to_i).to_s
  end
  nth.join.to_i
end

def to_factoradic(n)
  i = 1
  remainders = []
  while true do
    remainders << n % i
    n = n/i
    i += 1
    break if n == 0
  end
  remainders.reverse.join.to_i
end
