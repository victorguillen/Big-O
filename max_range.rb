def windowed_max_range(array, window_size)
  new_max = 0
  array.length.times do |i|
    max_min = array[i..-1].take(window_size)
    current_max = max_min.max - max_min.min
    new_max = current_max if current_max > new_max
  end
  new_max
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

def windowed_max_range(array, window_size)
  queue = []
  max = 0
  min = 0
  window_size.times do
    queue << array.shift
  end

  (array.size - 1).times do

    queue.shift
    queue << array.shift

  end

end

class Queue

  def enqueue

  end

  def dequeue

  end

  def max

  end

  def min

  end
