require 'byebug'

def two_sum?(arr, target_sum)
  (0...arr.length).each do  |i1|
    (i1+1...arr.length).each do |i2|
      if arr[i1] + arr[i2] == target_sum
        return true
      end
    end
  end
  false
end

def b_search(arr, target)
  mid = arr.length / 2

  return false if arr.empty?
  return false if arr.length == 1 && arr[0] != target
  return true if arr[mid] == target

  if arr[mid] > target
    return b_search(arr.take(mid), target)
  else
    return b_search(arr.drop(mid), target)
  end


end

arr = [0, 1, 5, 7]
# p b_search(arr, -1)
# p b_search(arr, 0)
# p b_search(arr, 4)
# p b_search(arr, 5)
# p b_search(arr, 7)
# p b_search(arr, 8)

def two_sum?(arr, target_sum)
  founded = false
  sorted_arr = arr.sort
  sorted_arr.each_with_index do |ele, i|
    number = target_sum - ele
    # print "#{sorted_arr[i+1..-1]}, #{number} \n"
    founded = true if b_search(sorted_arr[i+1..-1], number)
  end
  founded
end

def two_sum?(arr, target_sum)
  hash = Hash.new {|h,k| h[k] = []}
  arr.each_with_index do |ele, i|
    number = target_sum - ele
    return true if hash.has_key?(number)
    hash[ele] << number
    # hash[ele] << i
  end
  false
end

# [0, 1, 5, 7, 6]
# hash = {6=>0, 5=>1, }



arr = [0, 1, 5, 7, 6]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false
arr = [0, 1, 4, 5]
p two_sum?(arr, 8) # => should be false
