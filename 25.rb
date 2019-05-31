def solution(n)
  fib = Hash.new do |h,k|
    if k == 1
      h[k] = 1
    elsif k == 2
      h[k] = 2
    else
      h[k] = h[k-1] + h[k-2]
    end
  end
  i = 12
  digits = 0
  while true
    digits = fib[i].to_s.length
    i += 1
    break if digits == n
  end
  i
end
