# When done, submit this entire file to the autograder.
require "set"
# Part 1

def sum(arr)
  x=0
  arr.each do |number|
    x=x+number
    end
  return x
end

def max_2_sum(arr)
  if arr == []
    return 0
  end
  if arr.length ==1
    return arr[0]
  end

  largest1=false
  largest2=false

  arr.each do |number|
    if largest1 == false or number>largest1 
      largest2 = largest1
      largest1=number
    elsif largest2 == false or number>largest2
      largest2=number
    end
  end

  return largest1+largest2
end

def sum_to_n?(arr, n)
  set = Set.new
  arr.each do |number|
    if(set.include?(n-number))
      return true
    end
    set.add(number)
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  # YOUR CODE HERE
end
