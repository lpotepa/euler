def solution(s)
  arr = File.open('67.txt').read.split("\n").map { |line| line.split(" ").map(&:to_i) }
  find(arr).last.max
end

def find(arr)
  for line_index in (1..arr.length-1) do
    for value_index in (0..arr[line_index].length-1) do
      value = arr[line_index][value_index]
      left = if value_index -1 < 0
        0
      else
        value_index-1
      end
      arr[line_index][value_index] = arr[line_index-1][left..value_index].max + value
    end
  end
  arr
end

