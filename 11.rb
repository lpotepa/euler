def solution(s, n=4)
  results = []
  split = s.split("\n")
  size = split.size
  matrix = split.map do |el|
    el.split.map(&:to_i)
  end
  x = 0
  for line_index in (0..size-1) do
    for entry_index in (0..size-1) do
      bound = n-1
      right = 1
      left = 1
      vertical = 1
      horizontal = 1
      (0..bound).each do |i|
        if line_index <= (size - n) && entry_index <= (size - n)
          right *= matrix[line_index + i][entry_index + i]
        end
        if line_index <= (size - bound - 1) && entry_index >= (n - 1)
          left *= matrix[line_index + i][entry_index - i]
        end
        if line_index <= (size - bound - 1)
          vertical *= matrix[line_index + i][entry_index]
        end
        if entry_index <= (size - bound - 1)
          horizontal *= matrix[line_index][entry_index + i]
        end
      end
      results << right
      results << left
      results << vertical
      results << horizontal
    end
  end
  results.max
end
