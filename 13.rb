def solution(n)
   n.to_s.split("").map(&:to_i).each_slice(50).map { |el| el.join.to_i  }.inject(&:+).to_s[0..9].to_i
end
