m = 11
avail_flavors = [1, 2, 6, 5, 4, 3, 2, 9, 70, 13, 6, 7]
combos = []
i = 0
while i < arr.length - 1
  j = i + 1
  while j < arr.length
    if arr[i] + arr[j] == m
      combos << [i, j]
    end
    j += 1
  end
  i += 1
end
p combos