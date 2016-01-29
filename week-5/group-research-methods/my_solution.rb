# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}
=begin
# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#
=end

# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |item| item.to_s.include? thing_to_delete}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |k, v| k.to_s.include? thing_to_delete}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

=begin
# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#=>The method I used was the delete_if method. It will delete an element
#=>from the array/hash if some condition is met. In this case I deleted if
#=>an element had a substring of thing_to_delete.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#=>My biggest difficulty was doing destructive methods. I could get the correct
#=>answer, but it would not be the same object_id which forced me to abandon
#=>my initial solution.
#
=end
