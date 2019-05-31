def solution(n)
  return 0 if n > 1000 || n <= 0
  (1..n).map { |el| convert(el).gsub(" ", "").gsub("-", "").size }.inject(&:+)
end

def convert(n)
  case n
  when 1..19
    ones[n]
  when 20..99
    ten(n)
  when 100..999
    hundred(n)
  when 1000
    "one thousand"
  end
end

def ones
  {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
  }
end

def tens
  {
    2 => "twenty",
    3 => "thirty",
    4 => "fourty",
    5 => "fifty",
    6 => "sixty",
    7 => "seventy",
    8 => "eighty",
    9 => "ninety",
  }
end

def ten(n)
  s = "#{tens[n/10]}"
  rest = n%10
  if rest >= 1
    s += "-#{ones[n%10]}"
  end
  s
end

def hundred(n)
  s = "#{ones[(n/100)]} hundred"
  rest = n%100
  if rest >= 1 && rest < 20
    s += " and #{ones[rest]}"
  elsif rest >= 1 && rest <= 99
    s += " and #{ten(rest)}"
  end
  s
end
