def solution
  largest = -1
  xrange = (100..999)
  yrange = (100..999).to_a.reverse
  xrange.each do |x|
    yrange.each do |y|
     break if y < x
      num = x*y
      break if num < largest
      largest = num if num == reverse(num)
   end
 end
 largest
end

def reverse(n)
  num = n
  rev = 0
  while num > 0
    dig = num % 10
    rev = rev * 10 + dig
    num = num / 10  
  end
  rev
end
