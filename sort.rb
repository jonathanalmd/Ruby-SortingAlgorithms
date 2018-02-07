

class Sort

  def self.bubble_sort(array)
    limit1 = array.length - 1
    limit2 = array.length - 2
    swapped = false
    for i in 0..limit1 
      for j in 0..limit2
        if array[j] > array[j+1]
          array[j],array[j+1] = array[j+1],array[j]
          swapped = true
        end
      end
      break if !swapped
    end
    puts array
  end

end

puts Sort.bubble_sort([5,4,3,2,1])
