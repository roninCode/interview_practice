 def binary(item, array)
   i = 0 
   j = array.length - 1
   middle = (i + j) / 2
   while i < j
     if array[middle] == item
      return middle
     elsif array[middle] < item
      i = middle + 1
      middle = (i + j) / 2
     else
      j = middle - 1
      middle = (i + j)/2
     end
   end
    return -1
 end

 arr = (1..20).to_a
 binary(6, arr)