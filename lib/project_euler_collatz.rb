def even_next(n)
  n = n / 2
end

def odd_next(n)
  n = n * 3 + 1
end

def next_value(n)
  n % 2 == 0 ? even_next(n) : odd_next(n)
end

def collatz(n)
  sequence = [n]
  while n > 1
    n = next_value(n)
    sequence << n
  end
  sequence
end

def longest_collatz
  longest = 0
  i_length = 0
  num = 0
  999999.downto(800000) do |i|
    i_length = collatz(i).length
    if i_length > longest
      longest = i_length
      num = i
    end
  end
  num
end