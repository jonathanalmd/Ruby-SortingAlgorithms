

class Sort

  def self.bubble_sort(array)
    limit1 = array.length - 1
    limit2 = array.length - 2
    swapped = false
    for i in 0..limit1 
      for j in 0..limit2
        if array[j] > array[j+1]
          # Swap
          array[j],array[j+1] = array[j+1],array[j]
          swapped = true
        end
      end
      break if !swapped
    end
    puts array
  end

  def self.recursive_bubble_sort(array, len)
    # Base case (to stop recursion)
    if len == 1
      puts array
      return
    end
    limit = len - 2
    for i in 0..limit 
      if array[i] > array[i+1]
        # Swap
        array[i],array[i+1] = array[i+1],array[i]
      end
    end
    # Largest element is out 
    # Recursion until array length > 1
    recursive_bubble_sort(array, len - 1)
  end

end

puts Sort.bubble_sort([5,4,3,2,1])
puts Sort.recursive_bubble_sort([5,4,3,2,1],5)