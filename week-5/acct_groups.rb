=begin
Pcode******
Input: List of Names
Output: A list of people with group assignments

Steps:
Bring in the list of items. 
Check the total number of items in the list.
Decide on the required number of groups.
Go through the list and place people in the various groups.

Assumptions:
We are going to assume for the sake of simplicity, that the list will contain at
least 3 names. We will also assume that the list will be an array of strings that
does not need any further formatting, or that names are repeated. While these may not be acceptable assumptions in
a real world application I believe they are acceptable for a minimally viable product.
=end

def assign_groups(list)
  num_groups = number_of_groups(list)
  
  group_em = sort_into_groups(num_groups, list)
  
  return group_em
end


def number_of_groups(list)
  if list.length <= 5
    return 1
  else
    return list.length / 5 if list.length % 5 ==0
    return list.length / 5 + 1 if list.length % 5 != 0
  end
end



def sort_into_groups(num, list)
  count = 1
  group = { "Name" => "Group"}
  list.each do |name|
    group[name] = "Group_#{count}"
    if count == num
      count = 1
    else
      count += 1
    end
  end
  return group
end

#This is just for my own testing purposes to make sure I'm getting good output.
def print_group(groups)
  groups.each do |name, group|
    puts name + " => " + group
  end
end

cohort = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ Collins Jr.","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","Kevin Sullivan","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]
group = ["Amanda", "Ben", "Travis", "Jake", "AJ", "Jimmy", "Sarah", "Betty", "Katherine"]
border_case = ["Ben", "AJ", "Travis", "Jimmy", "Matt"]

print_group(assign_groups(cohort))
print_group(assign_groups(group))
print_group(assign_groups(border_case))



=begin
What was the most interesting and most difficult part of this challenge?

=> The most interesting part was the logic to solve the puzzle. Once I figured out
=> the logic it was pretty smooth sailing. I didn't run into too many problems
=> putting down code once I figured out the logic to solve the problem.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

=> I would say yes. Writing the pcode down really helped me figure stuff out. I just started
=> writing things down that I knew and worked my way towards the solution. I knew I 
=> wanted a specific output and I would get a specific input, and I just worked
=> from both ends towards the stuff I didn't understand immediately. 

Was your approach for automating this task a good solution? What could have made it even better?

=> I think it is minimally viable. There are certain preconditions such as I didn't
=> check to make sure that the list included at least three names or that the names were
=> strings or that names weren't repeated. And the more you go back to it the farther down
=> the rabbit hole you can go. There is so much functionality that can be added
=> even just off the top of my head; sorting, adding, deleting etc. That being said,
=> the code here could take in a list given a certain understanding from the user
=> and return the list with assigned groups. 

What data structure did you decide to store the accountability groups in and why?

=> So the list itself was just an array of names. I stored them in a hash. I did this
=> primarily because of how easy it is to assign new values with hash syntax. That and I am able, with
=> hashes, to have the names be associated with a particular group without having
=> to construct multi-dimensional arrays. 

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

=> Instance variables. A big problem, sytanctically (.is_word?), for me was figuring
=> out how to dynamically create variables based on a counter or some derivative therof.
=> I had to do a quick crash on instance variables and how to handle them to come up with
=> the syntax. I used the same syntax to create the number of groups I needed, but I am
=> able to do it dynamically based on input instead of cheating and having a case-based
=> solution. 
=end