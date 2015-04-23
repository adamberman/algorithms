def merge(left, right)
  answer = []
  until left.empty? || right.empty?
    if left.first < right.first
      answer << left.shift
    else
      answer << right.shift
    end
  end
  answer + left + right
end

def merge_sort(arr)
  return arr if arr.length < 2
  left = arr[0...arr.lengt/2]
  right = arr[arr.length/2..-1]
  merge(merge_sort(left), merge_sort(right))
end
