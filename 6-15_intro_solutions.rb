# Question 0

# Given an aray with length n, return the number of elements that appear repeatedly.

def solution0(a)

  total_count = 0
  elem_counts = Hash.new(0)

  a.each do |elem|
    elem_counts[elem] += 1
    total_count += 1 if elem_counts[elem] == 2
  end

  return total_count

end

# Question 1
# Implement a reverse bubble sort. (Bubble sort ­ an element can only be compared to its adjacent neighbors)

def solution1(a)

  sorted, n = false, a.length - 1

  unless sorted
    sorted = true

    for i in 0..n
      if a[i+1] && a[i] < a[i+1]
        sorted = false
        a[i], a[i+1] = a[i+1], a[i]
      end
    end

  end

  return a

end


# Question 2
# Given an array of integers, find the maximum sum of any slice.

def solution2(a)

  total_max, current_max = a[0], 0

  a.each do |int|
    current_max = [current_max + int, int].max
    total_max = [total_max, current_max].max
  end

  return max

end
