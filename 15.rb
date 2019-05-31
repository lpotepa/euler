def solution(m, n)
  if n == 0 || m == 0 
    return 1
  end
  if memo[[m,n]]
    return memo[[m,n]]
  end
  memo[[m,n]] = solution(m, n - 1) + solution(m - 1, n)
  memo[[m,n]]
end

def memo
  @memo ||= {}
end
