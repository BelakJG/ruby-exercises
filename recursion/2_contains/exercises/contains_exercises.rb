def contains?(hash, search_value)
  # Write a method that recursively searches for a value in a nested hash.
  # It should return `true` if the object contains that value.
  #
  # Examples:
  # contains?({ foo: { bar: "baz" } }, "baz") # true
  # contains?({ foo: { bar: "baz" } }, "egg") # false
  return if hash.class != Hash
  return true if hash.value?(search_value)
  hash.each_value do |value|
    return true if contains?(value, search_value)
  end
  false
end
