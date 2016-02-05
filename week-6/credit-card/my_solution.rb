# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Brett Ripley].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: Take in a number
# Output: Validation of the credit card number (true/false)
# Steps:
# Initialization of the class
# Check the valididty of the input upon creation.
# Create a way to check a card number
# => Use algorithim to determine if credit card is valid
  # =>Split the number into a container of individual numbers
  # => double every other number starting with the second to last
  # =>Breakdown any number over 10 into the tens and the unit position
  # =>Sum all numbers in array and check in divisible by 10

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard
  
  def initialize(card_number)
    arr = card_number.to_s.split("")
    raise ArgumentError.new("Invalid Card Number. Must Be 16 Digits!") if arr.length != 16
    @card_number = []
    arr.each do |x|
      @card_number << x.to_i
    end
  end
    
  def check_card
    count = 0
    while count < 16 do
      if count.even?
        @card_number[count] = @card_number[count] * 2
      end
      count += 1
    end
    
    @card_number = @card_number.join().split("")
    p @card_number
    sum = 0
    @card_number.each do |x|
      sum = sum + x.to_i
    end
    if sum % 10 == 0
      p true
    else
      p false
    end
  end

end
=end

# cred = CreditCard.new(1234567891021568)
# cred.check_card
# new_cred = CreditCard.new(4563960122001999)
# new_cred.check_card

# Refactor

class CreditCard
  
  def initialize(card_number)
    @card_number = card_number.to_s.split("")
    raise ArgumentError.new("Invalid Card Number. Must Be 16 Digits!") if        @card_number.length != 16
    @card_number.collect! {|x| x.to_i }
  end
    
  def check_card
    @card_number.map!.with_index { |x, i|
      if i.even? 
        x * 2 
      else 
        x 
      end
      }
    
    
    @card_number = @card_number.join().split("")
    @card_number.collect! {|x| x.to_i}
    sum = @card_number.reduce(:+)
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end

new_cred = CreditCard.new(4563960122001999)
new_cred.check_card
cred = CreditCard.new(1234567891021568)
cred.check_card

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?

=> I think just keeping track of the array was the hardest. Knowing when it was an
=> array of integers or characters excetera sometimes got a little confusing, and
=> we ran into problems with refactoring because of it. 

What new methods did you find to help you when you refactored?

The map and collect methods helped us refactor. Same with reduce. It allowed us to iterate
=> over the array and perform some operation instead of doing  the .each method or
=> while loops to iterate over arrays.

What concepts or learnings were you able to solidify in this challenge?

=> I think methods and enumerables. Everytime you figure out a way to use them
=> it becomes another tool in the toolbox. Also working with arrays and the various
=> ways you can iterate over them. Whether that be with .each or loops or using
=> methods and enumerables to do it for you. 
=end