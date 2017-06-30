
# max_duffel_bag_value(cake_arrays, capacity)
# # returns 555 (6 of the middle type of cake and 1 of the last type of cake)


# cake_arrays[0] => weight
# cake_arrays[1] => total value

# Write a function max_duffel_bag_value() that takes an array of cake type arrays and a weight capacity, and returns the maximum monetary value the duffel bag can hold.
cake_arrays = [[7, 160], [3, 90], [2, 15]]
capacity = 20

def max_duffel_bag_value(cake_arrays, capacity)
  priced_by_weight = cake_arrays.map do |cake|
    price_per_weight(cake[0], cake[1])
  end
  best_ratio_cake = []
  best_ratio = 0
  priced_by_weight.each_with_index do |average, idx|
    if average > best_ratio
      best_ratio = average
      best_ratio_cake = cake_arrays[idx]
    end 
  end
  p best_ratio_cake
end

def price_per_weight(weight, value)
  result = value.to_f / weight.to_f
  return result
end

def max_capacity(weight, max)
  
end

max_duffel_bag_value(cake_arrays, capacity)