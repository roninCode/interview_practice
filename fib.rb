# Write a function fib() that a takes an integer nn and returns the nnth fibonacci ↴ number.
# Let's say our fibonacci series is 0-indexed and starts with 0. So:

#   fib(0) # => 0
# fib(1) # => 1
# fib(2) # => 1
# fib(3) # => 2
# fib(4) # => 3
# ...

def fib(num)
  # adds two preceeding numbers to give you fib number (first two numbers are 1, 1)
  # fib sequence is: 1, 1, 2, 3, 5 ,8
  if num == 0
    p 0
    return 0
  elsif num == 1
    p 1
    return 1
  elsif num == 2
    p 1
    return 1
  end

  fib_numbers = [1, 1]
  (num - 2).times do |number|
    next_num = fib_numbers.last + fib_numbers[-2]
    fib_numbers << next_num
  end
  p fib_numbers.last
end

fib(300)