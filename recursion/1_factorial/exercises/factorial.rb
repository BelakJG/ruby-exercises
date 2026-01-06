def factorial(num)
  # write a recursive method for calculating the [factorial](https://simple.wikipedia.org/wiki/Factorial) of a number
  if num == 1 || num == 0
    return 1
  end
  if num < 0
    return nil
  end
  num * factorial(num - 1)
end
