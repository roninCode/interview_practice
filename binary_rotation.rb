arr = ["duck", "element", "figure", "ghost", "apple", "banana", "corn", "donkey", "elephant"]

i = 1

while i < arr.length
  prev_let = arr[i - 1][0]
  curr_let = arr[i][0]
  if curr_let > "a" && prev_let == "a"
    return prev_let
  end
  i += 1
end


# use binary search for above rotation

# if arr[middle][0] == "a"
#  return middle

# if arr[middle - 1][0] < arr[middle][0]
#     max = middle - 1 
# if arr[middle + 1][0] > arr[middle][0]
#  min = middle + 1

# middle = arr.length / 2
# min = 0
# max = arr.length - 1

# while min <= max
#   if middle[0] == "a"
#     p middle
#     return middle
#   elsif arr[middle - 1][0] < arr[middle][0]
#     max = 

# end