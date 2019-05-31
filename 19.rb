def solution
  count = 0
  last_starting_day = nil
  (1901..2000).each do |year|
    (1..12).each do |month|
      starting_day = last_starting_day || 6
      month_days = month_days(month, year)
      (starting_day..month_days).step(7).each do |day|
        last_starting_day = 7 - (month_days - day)
        count += 1 if last_starting_day == 1
      end
    end
  end
  count
end

def month_days(month, year)
  if [1,3,5,7,8,10,12].include? month
    31
  elsif [4,6,9,11].include? month
    30
  elsif month == 2
    if leap?(year)
      29
    else
      28
    end
  end
end

def leap?(year)
  if century?(year)
    year % 400 == 0
  else
    year % 4 ==0
  end
end

def year_days(year)
  leap?(year) ? 366 : 365
end

def century?(year)
  year % 100 == 0
end
