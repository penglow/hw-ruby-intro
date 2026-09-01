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
  return "Hello, " +name
end

def starts_with_consonant?(s)
  vowels = %w[q w r t y p s d f g h j k l z x c v b n m ]
  if s == ""
    return false
  end
  if vowels.include?(s[0].downcase)
    return true
  end
  return false
end

def binary_multiple_of_4?(s)
  number = s.to_i
  other = 0
  if number%4 != 0 || s.match?(/[a-z]/i) || s== ""
    return false
  end
  while number != 0
    other = number%10
    number = number/10
    if !(other == 0|| other ==1)
      return false
    end
  end
  return true
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == ""
      raise ArgumentError 
    end
    if price<=0
      raise ArgumentError
    end

    @isbn = isbn 
    @price = price
  end

  def price_as_string()
    if @price.class == Float
      j = @price*10
      if j.to_i == j
        return "$"+@price.to_s+"0"
      else
        return "$"+@price.to_s
      end
    else
      return "$"+@price.to_s+".00"
    end
  end

end
