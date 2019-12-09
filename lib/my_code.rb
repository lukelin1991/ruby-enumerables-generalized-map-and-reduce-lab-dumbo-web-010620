# Your Code Here
def map(source_array)
  new = []
  idx = 0
  while idx < source_array.length do
    new.push(yield(source_array[idx]))
  end
end
