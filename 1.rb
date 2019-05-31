# Works only for A = 2

  def solution(a, target)
    a.map do |n|
      sumdiv(n, target)
    end.inject(&:+) - sumdiv(a.inject(&:* ), target)
  end

  def sumdiv(n, target)
    x = target/n
    n*(x*(x+1))/2
  end
