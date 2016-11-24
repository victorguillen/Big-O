require 'byebug'




def two_sum_hash(arr, target)
  hash = Hash.new
  arr.each { |el| hash[el] = true }
  arr.any? do |n|
    new_target = target - n
    hash[new_target] unless new_target == n
  end
end


arr = [0, 1, 5, 7]
p two_sum_hash(arr, 6) # => should be true
p two_sum_hash(arr, 10) # => should be false
