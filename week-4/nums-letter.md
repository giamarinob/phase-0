##What does puts do?

The puts command sends output to the screen followed by a new line.

##What is an integer? What is a float?

An integer is a number that has no decimals. It can be poitive, negative, or zero.
A float is a number that has decimals. It can be positive, negative, or 0.0.

##What is the difference between float and integer division? 

THe difference between integer and float division is what the result is. If you integers
are divided then the result will be an integer. Even if the actual answer isn't an integer
the computer will chop off any remainder (after the decimal) and keep what's left. 
Float division will keep the numbers after the decimal point. Using integers and floats
will result in a float result. 

The difference, in a simpler sense, is the precision you wish to have in your answer.
Integer division can often result in an approximate answer unless the division has
no remainder. Float division is much more exact. Now that is, of course, a relative 
term, but the point is float division will result in a more exact answer.

```
# Hours in a year 24 hours a day and 365 days in a year
puts 24*365

#Minutes in a decade. 60 min/hr - 24hr/day - 365day/yr - 10yr/dec
puts 60*24*365*10

#Age in seconds. Assume 29 yrs old. 3600s/hr - 24hr/day - 365day/yr - 29yrs
puts 3600*24*365*29

#Age of author at the time of publishing. 1025000000s old. 3600s/hr - 24hr/day - 365day/yr
remain = 1025000000.0/(3600.0*24.0*365.0)
puts "remain = #{remain}"
years = remain.to_i
remain = (remain - years) * 365.0
puts "remain = #{remain}"
days = remain.to_i
remain = (remain - days) * 24.0
puts "remain = #{remain}"
hours = remain.to_i
remain = (remain - hours) * 60.0
puts "Remain = #{remain}"
minutes = remain.to_i
remain = (remain - minutes) * 60.0
puts "Remain = #{remain}"
seconds = remain.to_i
puts "Author is #{years} years #{days} days #{hours} hours #{minutes} minutes and #{seconds} seconds old"

```

[4.2.1 Defining Variables](https://github.com/giamarinob/phase-0/blob/master/week-4/defining-variables.rb)
[4.2.2 Simple String Methods](https://github.com/giamarinob/phase-0/blob/master/week-4/simple-string.rb)
[4.2.3 Local Variables and Basic Arithmetical Expressions](https://github.com/giamarinob/phase-0/blob/master/week-4/basic-math.rb)

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles basic arithmetic the same as a calculator does. The only differnence is 
when it comes to division. If you divide two integers the result will be an integer
even if the exact answer is not an integer. If you want the exact answer with division
you need to use floats when dividing. Otherwise everything else is the same. 

##What is the difference between integers and floats?

The difference is that floats have decimals and integers do not have anything smaller
than the one's position. If you use floats anywhere in an arithmetical operation
the result will be a float. If you convert a float into an integer it will just
lop off everything after the one's position.

##What is the difference between integer and float division?

THe difference between integer and float division is what the result is. If you integers
are divided then the result will be an integer. Even if the actual answer isn't an integer
the computer will chop off any remainder (after the decimal) and keep what's left. 
Float division will keep the numbers after the decimal point. Using integers and floats
will result in a float result. 

The difference, in a simpler sense, is the precision you wish to have in your answer.
Integer division can often result in an approximate answer unless the division has
no remainder. Float division is much more exact. Now that is, of course, a relative 
term, but the point is float division will result in a more exact answer.

##What are strings? Why and when would you use them?

According to Pine's "Learning to Code" Strings are simply groups of letters. Strings
can contain letters, symbols, digits, and spaces. They can even contain nothing. That's 
known as an empty string. The possibilities of usage for strings are nearly endless
and far beit for me to suggest I could come anywhere close to understanding all the possible
uses for it, especially at this early stage in my learning. Basically anywhere you 
want to write something is a possible use for strings. You can take input from a user, 
you can send messages to a screen, you can use them as a return value for a function.

##What are local variables? Why and when would you use them?

Local variables are variables whose scope is specifically limited. The most obvious example
is where you have a function and in that function you declare a variable. That is a local variable whose
scope is limited to that function. If you try to reference that variable outside of the 
function ruby will not know what you are talking about or it will create a new variable. It all is a matter of
perspective, however. If have a seperate file that you're trying to access, the specific varibles 
that may be called out in that file would be considered local variables from the perspective of an outside source
trying to access the file. It's why, in these first examples, we declared variables
in the rspec files because it we were to declare them in a different file the variable
names in the seperate ruby file would be meaningless to the rspec file. Since we wanted
to check specific variable we had to declare variables that were local w.r.t. the 
rspec file. 

##How was this challenge? Did you get a good review of some of the basics?

This was a fun little challenge to get us used to using rpec and reaquainting us
with ruby variable usage. 