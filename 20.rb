def solution(n)
  factorial(n).to_s.split("").map(&:to_i).inject(&:+)
end

def factorial(n)
  if n <= 1
    1
  else
    n * factorial(n-1)
  end
end
