# Count numbers that their only
# Factors are 2 3 5 lower then n
# e.g n=10 -> 7 as 2 3 4 5 6 8 9
#

def check_factors(number)
  while number % 2 == 0
    number = number / 2
  end
  while number % 3 == 0
    number = number / 3
  end
  while number % 5 == 0
    number = number / 5
  end
  number == 1
end

def count_naive(n)
  i = 2
  count = 0
  numbers = []
  
  while i < n do
    if check_factors(i)   
      count += 1
      numbers << i
    end
    i += 1
  end
  count
end
