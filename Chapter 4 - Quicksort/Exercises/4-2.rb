# Write a recursive function to count the number of items
# in a list.
def count(arr)
  return 0 if arr.empty?

  1 + count(arr[1..-1])
end

p count([1, 2, 3, 4, 6, 7])