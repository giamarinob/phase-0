# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # Have a list of the letters of the columns and randomly pick a letter
  # Randomly pick a number from 1 - 100

# Check the called column for the number called.
  # Check to see if the column called has the number in it and if it does replace it with an 'x'
# If the number is in the column, replace with an 'x'
  #find the place in the column that the number is in and replace that space with an x

# Display a column to the console
  # This is redundant and unecessary when you're going to display the entire board.

# Display the board to the console (prettily)
  # Go through each column and display the number/x

# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
    assign_board()
    @letter = ['b', 'i', 'n', 'g', 'o']
  end
  
  def assign_board
    @b = @bingo_board.collect { |x| x[0] }
    @i = @bingo_board.collect { |x| x[1] }
    @n = @bingo_board.collect { |x| x[2] }
    @g = @bingo_board.collect { |x| x[3] }
    @o= @bingo_board.collect { |x| x[4] }
    puts "b" + @b.to_s
    puts "i" + @i.to_s
    puts "n" + @n.to_s
    puts "g" + @g.to_s
    puts "o" + @o.to_s
  end
  
  def display_board
    count = 0
    puts "  B |  I |  N |  G |  O "
    5.times do
      puts " #{@b[count]} | #{@i[count]} | #{@n[count]} | #{@g[count]} | #{@o[count]} "
      count += 1
    end
  end
  
  def make_a_guess
    col = @letter[rand(0..5)]
    num = rand(1..100)
    check_board(col, num)
  end
  
  def check_board(col, num)
    case col
    when 'b'
      if @b.include?(num)
        @b[@b.index(num)] = 'X'
      end
    when 'i'
      if @i.include?(num)
        @i[@i.index(num)] = 'X'
      end
    when 'n'
      if @n.include?(num)
        @n[@n.index(num)] = 'X'
      end
    when 'g'
      if @g.include?(num)
        @g[@g.index(num)] = 'X'
      end
    else
      if @o.include?(num)
        @o[@o.index(num)] = 'X'
      end
    end
  end
end
=end
# Refactored Solution

class BingoBoard

  def initialize(board)
    assign_board(board)
    @letter = ['b', 'i', 'n', 'g', 'o']
  end
  
  def assign_board(board)
    @b = board.collect { |x| x[0] }
    @i = board.collect { |x| x[1] }
    @n = board.collect { |x| x[2] }
    @g = board.collect { |x| x[3] }
    @o = board.collect { |x| x[4] }
    # Checking to make sure columns get assigned correctly
    # puts "b" + @b.to_s
    # puts "i" + @i.to_s
    # puts "n" + @n.to_s
    # puts "g" + @g.to_s
    # puts "o" + @o.to_s
  end
  
  def display_board
    count = 0
    puts "  B |  I |  N |  G |  O "
    5.times do
      puts " #{@b[count]} | #{@i[count]} | #{@n[count]} | #{@g[count]} | #{@o[count]} "
      count += 1
    end
  end
  
  def make_a_guess
    check_board(@letter[rand(0..5)], rand(1..100))
  end
  
  def check_board(col, num)
    case col
    when 'b' then @b[@b.index(num)] = 'X' if @b.include?(num)
    when 'i' then @i[@i.index(num)] = 'X' if @i.include?(num)
    when 'n' then @n[@n.index(num)] = 'X' if @n.include?(num)
    when 'g' then @g[@g.index(num)] = 'X' if @g.include?(num)
    when 'o' then @o[@o.index(num)] = 'X' if @o.include?(num)
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
# Checking to make sure reassignment works properly with a known combo
# new_game.check_board('b', 47)

# Let's be honest here, I'm not going to write this over and over until I get a bingo.
1000.times do
  new_game.make_a_guess
end

new_game.display_board



#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

=> The pcode for this was a little more difficult in the past. I think the main reason
=> was that an outline had sort of already been provided. It's easier for me when I'm
=> just given the input, output and steps. This outline was not exactly what I had in mind and 
=> all it did was to cause a conflcit from how I wanted to approach the problem and the pcode ended
=> up becoming messy and unorganized. 

What are the benefits of using a class for this challenge?

=> Containing the board within the class makes it much more accessbile because you don't
=> have to carry around the board in the code. It exists as a class so you can use
=> instance methods and variables to manipulate the board instead of trying to do it directly.

How can you access coordinates in a nested array?

=> I did it by breaking the board into columns and then going through the columns
=> and checking for a specific element. Generally speaking, you will need iteration.
=> That's going to be the best way. 

What methods did you use to access and modify the array?

=> To break the board up into columns I used the collect method to go through and
=> collect all the numbers in a given column. To modify the array I used the .index
=> in combination with the .includes? method to determine if the number was in the 
=> specified column and at what location within the column the number was located if
=> it indeed was in the column. 

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

=> I had never used the .index method before. The purpose of this method is to return
=> the index at which a certain element is in the array. Now the rub is that it will
=> return the first instance of an element occuring in an array, so if you have multiple
=> instances of an object in an array it will only return the first index that it appears
=> in. I could use this with confidence in this case because we can assume that a proper
=> board would not have duplicate numbers in the same column. Beyond that we are assuming
=> we are getting a proper board. If we could not make that assumption then I would need
=> an additional step to make sure the board is a valid one at which point I could still
=> use the index method becuase if a column had a number more than once I would reject the
=> board as invalid.

How did you determine what should be an instance variable versus a local variable?

=> Variables I needed to access in more than one place within the class I made instance variables.
=> In my initial solution I had local variables in the guess method to hold the 
=> column and number guess becuase I only needed them in that particular situation. Now
=> in the refactored solution I just bypassed them altogether, but that isn't the point. 

What do you feel is most improved in your refactored solution?

=> Checking the columns for the number and replacing the number with an x is refactored
=> as well as making the guess itself. Making the guess was reduced to one line of code
=> making it more readable and efficient by removing the local variables. I also had this
=> peculiar syntax where I initialized the board to an instance variable and went 
=> through that variable and created the columns. I then had the board in two states
=> floating around the class. The board as it was given to me and the board into columns.
=> That was nonsense and I quickly rectified that mistake in the refactored version
=> when I realized my error.
=end