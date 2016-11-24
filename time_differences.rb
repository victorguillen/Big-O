require 'byebug'

def my_min(arr)
  min = arr.first
  temp_min = arr.first
  arr.each_with_index do |el, idx|
    arr.each_with_index do |el2, idx2|
      unless idx == idx2
        if el > el2
          temp_min = el2
        end
      end
      if min > temp_min
        min = temp_min
      end
    end
  end

  min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def my_min2(arr)
  min = arr.first
  arr.each do |el|
    min = el if min > el
  end
  min
end

# p my_min2(list)

def largest_contiguous_subsum(arr)
  sum = 0
  (0...arr.size).each do |idx|
    (idx + 1...arr.size).each do |idx2|
      temp_sum = arr[idx..idx2].inject(:+)
      sum = temp_sum if temp_sum > sum
    end
  end
  sum
end

# list = [5, 3, -7]
#
# p largest_contiguous_subsum(list)


def largest_contiguous_subsum2(arr)
  big_sum = nil
  current = arr.first

  arr[1..-1].each_with_index do |el, idx|
    current += el

    if big_sum.nil? || big_sum < current
      big_sum = current
    elsif current < 0
      current = 0
    end
  end

  big_sum
end

list = [5, 3, -7]
p largest_contiguous_subsum2(list) # => 8

list2 = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum2(list2) # => 8 (from [7, -6, 7])

list3 = [-5, -1, -3]
p largest_contiguous_subsum2(list3) # => -1 (from [-1])
