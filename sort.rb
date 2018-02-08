

class Sort

  def self.bubble_sort(array)
    limit1 = array.length - 1
    limit2 = array.length - 2
    swapped = false

    for i in 0..limit1 
      for j in 0..limit2 - i
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

  def self.selection_sort(array)
    limit = array.length - 1

    for i in 0..limit
      swap = false
      min_idx = i
      for j in i+1..limit
        if array[j] < array[min_idx]
          min_idx = j
          swap = true
        end
      end
      if swap
        # If min_idx changed then swap
        array[i], array[min_idx] = array[min_idx], array[i]
      end
    end
    puts array

  end

  def self.recursive_selection_sort(array, len)
    # Base case (to stop recursion)
    if len == 1
      puts array
      return
    end
    
    swap = false
    max_idx = 0
    for i in 1..len - 1
      if array[i] > array[max_idx]
        max_idx = i
        swap = true
      end
    end
    if swap
      # If min_idx changed then swap
      array[len-1], array[max_idx] = array[max_idx], array[len-1]
    end

    # Largest element is out 
    # Recursion until array length > 1
    recursive_selection_sort(array, len - 1)
    
  end


  def self.insertion_sort(array)
    limit = array.length - 1
    for i in 1..limit
      # store key value 
      aux = array[i]
      j = i - 1

      # move sorted elements
      while j >= 0 and array[j] > aux
        array[j+1] = array[j]
        j -= 1
      end
      # update array using the stored value
      array[j+1] = aux

    end
    puts array

  end

  def self.insertion_sort2(array)
    # easier to understand 
    limit = array.length - 1
    for i in 1..limit
      for j in 0..i-1
        if array[i] < array[j]
          array.insert(j,array[i])
          array.delete(i)
        end
      end
    end
    puts array

  end

  def self.recursive_insertion_sort(array, len)
    # Base case (to stop recursion)
    if len == 1
      puts array
      return
    end
    # recursive call until len == 1
    recursive_insertion_sort(array, len - 1)

    # store key value (last element)
    aux = array[len-1]
    j = len - 2

    # move sorted elements
    while j >= 0 and array[j] > aux
      array[j+1] = array[j]
      j -= 1
    end
    # update array using the stored value
    array[j+1] = aux

  end

end

array = [5,3,4,2,1]
array = [1,2,3,4,5]
puts Sort.bubble_sort(array)
puts Sort.recursive_bubble_sort(array,array.length)
puts Sort.selection_sort(array)
puts Sort.recursive_selection_sort(array, array.length)
puts Sort.insertion_sort(array)
puts Sort.insertion_sort2(array)
puts Sort.recursive_insertion_sort(array, array.length)
