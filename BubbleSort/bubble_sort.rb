def bubble_sort(array)
  for i1 in 0...array.length
    sorted = true

    for i2 in 0...(array.length - i1 -1)
      if array[i2] > array[i2 + 1]

        array[i2], array[i2 + 1] = array[i2 + 1], array[i2]
        sorted = false
      end
    end

    break if sorted
  end

  array

end

puts bubble_sort([4,3,78,2,0,2])