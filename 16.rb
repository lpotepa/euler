def solution(n)
  (2**n).to_s.split("").map(&:to_i).inject(&:+)
end
