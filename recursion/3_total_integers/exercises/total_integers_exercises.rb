def total_integers(array)
  # Count the total number of integers inside of the given array
  # The array may be nested, and the integers inside these "inner" layers must also be counted
  #
  # Example: `total_integers([0, 1, [5]]) == 3`
  #
  # NOTE: you may notice that `Array#flatten` would make quick work of this,
  # but you should implement this method without using it. The tests will check
  # to make sure `#flatten` isn't used.
  return 1 if array.class == Integer
  return 0 if array.class != Array && array.class != Integer
  return 0 if array.length == 0
  sum = 0
  array.each do |item|
    sum += total_integers(item)
  end
  sum
end
