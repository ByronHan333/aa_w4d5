def my_min(arr)
  arr.each_with_index do |ele1, i1|
    found_bigger = false
    arr.each_with_index do |ele2, i2|
      if ele2 < ele1
        found_bigger = true
      end
    end
    return ele1 if found_bigger == false
  end
end

def my_min(arr)
  smallest = arr[0]
  arr.each do |ele|
    if ele < smallest
      smallest = ele
    end
  end
  smallest
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def largest_contiguous_subsum(arr)
  res = []
  (0...arr.length).each do |i|
    (i...arr.length).each do |j|
      res << arr[i..j].sum
    end
  end
  res.max
end

def largest_contiguous_subsum(arr)
  largest_sum = arr[0]
  current_sum = arr[0]

  arr[1..-1].each do |ele|
    current_sum = 0 if current_sum < 0
    current_sum += ele
    largest_sum = [current_sum, largest_sum].max
  end

  largest_sum
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])
list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8
list = [-2,1,-3,4,-1,2,1,-5,4]
p largest_contiguous_subsum(list) # => 6

