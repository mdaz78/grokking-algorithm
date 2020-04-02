# find the maximum number in a list
def max_number(arr)
  if arr.length == 2
    first = arr.first
    second = arr.last
    return first > second ? first : second
  end

  first = arr.first
  max = max_number(arr[1..-1])
  return max > first ? max : first
end

p max_number([1, 5, 7, 2, 3]) # 7