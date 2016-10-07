# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  return arr.reduce(:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  return arr.max(2).reduce(:+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  end
  values = Hash.new
  values[0] = n - arr[0]
  for i in 1...arr.length
    for j in 0...i
      if values[j] == arr[i]
        return true
      end
    end
    values[i] = n - arr[i]
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (/\p{Ll}/ =~ s.downcase[0]) == 0 and (/[^aeiou]/ =~ s.downcase) == 0
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (/\A[01]+\Z/ =~ s) == 0 and Integer(s) % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f" % price
  end
end
