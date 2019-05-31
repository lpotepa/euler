def solution(n)
  value = 0
  i = 1
  while hash[i] <= n
    i += 1
  end
  hash.delete(hash.keys.last)
  hash.values.select { |el| el%2 == 0 }.inject(&:+)
end

def hash
  @hash ||= Hash.new do |h,k|
    if k == 1
      h[k] = 1
    elsif k == 2
      h[k] = 2
    else
      h[k] = h[k-1] + h[k-2]
    end
  end
end
