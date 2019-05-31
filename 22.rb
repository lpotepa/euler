def solution
  score = 0
  names = File.open('22.txt').read.gsub(/"/,'').split(",").sort
  names.each_with_index do |name, index|
    name_sum = name.each_byte.map do |byte|
      byte - 64
    end.inject(&:+)
    score += name_sum*(index+1)
  end
  score
end
