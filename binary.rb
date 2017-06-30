 def binary(item, array)
   i = 0 
   j = array.length
   p "j is #{j}"
   middle = (i + j) / 2
   count = 0
   while i <= j
     if array[middle] == item
      count += 1
      p "count #{count}"
      p "Your item is at index: #{middle}"
      p middle
      return middle
     elsif array[middle] < item
      count += 1
      p "count #{count}"
      # p middle
      i = middle + 1
      middle = (i + j) / 2
     else
      count += 1
      p "count #{count}"
      j = middle - 1
     # p middle
      middle = (i + j)/2
     end
   end
    p "count #{count}"
    p "Sorry, your item isn't in this array."
    return nil
 end



 arr = (1..20).to_a
 p arr
 binary(20, arr)
p "*****" * 10



 def linear_search(item, array)
  i = 0
  count = 0 
  while i < array.length
    count += 1
    p "count #{count}"
    if array[i] == item
      p "Your item is at index: #{i}"
      return i
    end
    i += 1
  end
  p "Sorry, your item isn't in this array."
  return false
 end

 linear_search(20, arr)