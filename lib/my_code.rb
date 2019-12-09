# Your Code Here
def map(source_array)
  new = []
  idx = 0
  while idx < source_array.length do
    new.push(yield(source_array[idx]))
    idx += 1
  end
  return new
end

def reduce(source_array, sv = nil)
  if sv
    sum = sv
    idx = 0
  else
    sum = array[0]
    idx = 1
  end

  while idx < source_array.length do
    sum = yield(sum, source_array[idx])
    idx += 1
  end
  return sum
end
