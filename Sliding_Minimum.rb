def sliding_maximum(k, array)
    # your code here
     return nil if k > array.size
    start = 0
    pos = 0
    i = 0
    e = array[0]
    result = []
    while start <= array.length - k
      if pos == k - 1
        result << e
        start += 1
        i = start
        pos = 0
        e = array[i]
      else
        pos += 1
        i+=1
        e = array[i] > e ? array[i] : e
      end
    end
    return result
  end
  
  sliding_maximum(3, [1, 3, 5, 7, 9, 2])
  # => [5, 7, 9, 9]
  