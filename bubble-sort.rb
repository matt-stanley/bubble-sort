def bubble_sort(array)
  arr = array
  passes = 0

  while passes < arr.length - 1 do
    i = 0
    p 'new pass'
    swap_this_pass = false
    while i < arr.length - passes - 1 do
      p arr.to_s
      if arr[i] > arr[i + 1]
        temp = arr[i + 1]
        arr[i + 1] = arr[i]
        arr[i] = temp
        swap_this_pass = true
      end
      i += 1
    end

    return arr if swap_this_pass == false

    passes += 1
  end
  arr
end

puts bubble_sort([1, 7, 2, 3, 8, 5, 9, 4, 6]).to_s
