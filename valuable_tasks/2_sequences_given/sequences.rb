def sequence_b(n)
  return 2 if n == 1
  return sequence_b(n-1) + sequence_a(n-1)
end

def sequence_a(n)
  return 1 if n == 1
  return sequence_a(n-1) + 2*sequence_b(n)
end

def smallest_diff(k)
  n = 1
  diff_decreasing = true
  prev_diff = 10000000

  while true
    diff = (sequence_b(n) - k).abs
    return n-1 if prev_diff < diff
    prev_diff = diff
    n += 1
  end
end
