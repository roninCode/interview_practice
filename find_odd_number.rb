arr = [1, 1, 4, 3, 5, 3, 4, 3, 3]

number_counter = Hash.new(0)
odd_freq_nums = []

arr.each do |num|
  number_counter[num] += 1
end

number_counter.each do |num, amount|
  if amount.odd?
    odd_freq_nums << num
  end
end

p odd_freq_nums