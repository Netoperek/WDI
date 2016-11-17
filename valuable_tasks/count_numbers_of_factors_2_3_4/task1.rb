# Count numbers that their only
# Factors are 2 3 5 lower then n
# e.g n=10 -> 7 as 2 3 4 5 6 8 9
#

def req_count(number, p, n)
  p = p * number

  if p >= n
    return 0
  else
    if number == 5
      return 1 + req_count(5, p, n)
    elsif number == 3
      return 1 + req_count(3, p, n) + req_count(5, p, n)
    elsif number == 2
      return 1 + req_count(2, p, n) + req_count(3, p, n) + req_count(5, p, n)
    end
  end
  
end

def count(n)
  req_count(2, 1, n) + req_count(3, 1, n) + req_count(5, 1, n)
end
