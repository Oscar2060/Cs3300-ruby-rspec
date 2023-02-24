# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0;
  arr.each do |x|
    sum += x;
  end
  return sum;

  # makes sure that if arr is empty the method returns 0
  # iterates through arr and sums up values then returns sum of all values 
end

def max_2_sum arr
  # YOUR CODE HERE
  highest = 0;
  secHighest = 0;

  if arr.length == 1
    highest = arr[0];
  elsif arr.length > 1
    highest = -100;
    secHighest = -100;
    arr.each do |x|
      if x > highest
        highest = x;
      elsif x > secHighest
        secHighest = x;
      end
    end
  end 

  return highest + secHighest;

  # first checks if arr only contains one element, then it returns that one element as the max sum
  # with second condition is checks that if arr has no elements, it returns a value of 0
  # or if arr contains more than 1 element, then it iterates through arr keeping track of the
  # two highest values and finally summing them up at the end of all the iteratiors
  # highest and sechighest variables were changed to negative values once I noticed
  # that some values in arr were negative 
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  current = 0;
  second = 1;
  if arr.length > 1
    while current < arr.length
      while second < arr.length
        if n == arr[current] + arr[second]
          return true;
        end
        second = second + 1;
      end
      current = current + 1;
      second = current + 1;
    end
    return false;
  else 
    return false;
  end

  # first checked if arr contained more than 1 element
  # then iterated through arr compared every value with every other value until the sum 
  # of two values equaled n, if no values equaled n at the end of the outside while loop
  # then no two values worked and false was returned
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " << name;

  # test wanted "Hello, (string)" returned so I just concatenated the variable name to "Hello, "
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /^[^aeiouAEIOU\W]/

  # since we were looking for values that weren't vowels, I used the ^ to invert lowercase and
  # uppercase vowels, as well as non special characters, so that if any vowels or special 
  # characters were the first character, the program wouuld know
  # also used the initial ^ to target the first character only with the regular expression
end

# Optional
def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(i, p)

    raise ArgumentError.new(
      "Expected a non-empty string as the first argument"
    ) if i.length < 1
  
    raise ArgumentError.new(
      "Expected a value greater than 0 as the second argument"
    ) if p < 1

    @isbn = i
    @price = p
  end

  def isbn
    @isbn
  end
  def price
    @price
  end

  def isbn=(i)
    @isbn = i
  end
  def price=(p)
    @price = p
  end

  def price_as_string
    s = "$%0.2f" % [@price]
    return s
  end

  # used argument error exception to make sure no empty strings or values of 0 or less worked
  # made sure getter and setter method names matched names of method being tested 
  # created a string that would hold price value with other formating specifiers to match test
  # and then returned that string 
end