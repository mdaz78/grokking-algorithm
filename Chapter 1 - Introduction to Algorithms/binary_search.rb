# Here arr is a sorted list of elements
# "element" the value to be searched in the arr
# returns the index in which the element was found
def binary_search(arr, element)
  low = 0
  high = arr.length - 1

  while low <= high
    mid = (low + high) / 2
    guess = arr[mid]

    if guess > element
      high = mid - 1
    elsif guess < element
      low = mid + 1
    else
      return mid
    end
  end

  nil
end

p binary_search([1, 2, 3, 4, 5], 4) # 3
p binary_search([1, 2, 3, 4, 5], 3) # 2
p binary_search([1, 2, 3, 4, 5], 7) # nil