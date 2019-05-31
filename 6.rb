def solution(n)
  square_of_sum = ((1 + n).fdiv(2)*n)**2
  sum_of_squares = n*(n+1)*(2*n+1)/6
  (square_of_sum - sum_of_squares).to_i
end
