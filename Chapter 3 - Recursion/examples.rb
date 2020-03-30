def countdown(i)
  return if i <= 0 # base case

  puts i
  countdown(i - 1) # recursive case
end

# countdown(5)

# Recursive function to calculate the factorial of a number
def factorial(n)
  return 1 if n == 1

  n * factorial(n - 1)
end

p factorial(5)