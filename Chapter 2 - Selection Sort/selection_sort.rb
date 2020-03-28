# sort element from smallest to largest
# using selection sort

def findSmallestIndex(arr)
  smallest = arr.first
  smallest_index = 0
  arr.each_with_index do |el, index|
    if el < smallest
      smallest = el
      smallest_index = index
    end
  end
  smallest_index
end

def sort(arr)
  sortedArr = []
  (0...arr.length).each do |i|
    smallest_index = findSmallestIndex(arr)
    sortedArr << arr[smallest_index]
    arr.delete_at(smallest_index)
  end
  sortedArr
end

p sort([5, 3, 6, 2, 10])