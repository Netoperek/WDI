require 'pry'

def eratosthenes_sieve(n)
  sieve = []
  i = 0

  while i < n
    sieve[i] = true
    i += 1
  end

  i = 2
  puts i

  while i < n 
    j = 2
    while j*i < n
      sieve[j*i] = false
      j += 1
    end

    i += 1
    while !sieve[i] && i < n
      i += 1
    end
    puts i if sieve[i]
  end
end

eratosthenes_sieve(100)
