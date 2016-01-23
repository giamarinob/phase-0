# Factorial

# I worked on this challenge [by myself, with: Jillian].


# Your Solution Below
def factorial(number)
  # Your code goes here
  total = number
  if number <= 1
    return 1
  else
    while number > 1 do
      number -= 1
      total = total * number
    end
    return total
  end
end