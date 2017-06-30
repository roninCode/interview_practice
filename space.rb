# int_count = Hash.new(0)
# unique_ints = []
# n = 10
# array = []
# n.times do 
#   array << rand(11)
# end

# array.each do |int|
#   int_count[int] += 1
# end

# int_count.each do |int, value|
#   if value > 1
#     unique_ints << int
#   end
# end

# p int_count
# p unique_ints
# return unique_ints



m = 11
avail_flavors = [1, 2, 6, 5, 4, 3, 9, 2, 70, 13, 7, 6]
combos = []
i = 0
while i < avail_flavors.length - 1
  j = i + 1
  while j < avail_flavors.length
    p "avail_flavors[i] : #{avail_flavors[i]} + avail_flavors[j] : #{avail_flavors[j]}" 
    if avail_flavors[i] + avail_flavors[j] == m
      combos << [i, j]
    end
    j += 1
  end
  i += 1
end
p combos