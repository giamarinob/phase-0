# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  if (!array_1.empty? || !array_2.empty?)
    c_array = []
    array_1.each do |ind|
      c_array.push(ind)
    end
    array_2.each do |ind|
      c_array.push(ind)
    end
    return c_array
  else
    return []
  end
end