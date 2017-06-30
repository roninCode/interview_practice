require 'pry'
# find x,y coordinates of rec1, rec2, and overlap_rec (ul, ur, bl, br)

# # define rec1 with [[ul], [ur], [bl], [br]]
# rec1 = [
#   [1, 10], #ul
#   [3, 10], #ur
#   [1, 5],  #bl
#   [3, 5]   #br
# ]
# # define rec2 with [[ul], [ur], [bl], [br]]
# rec2 = [
#   [2, 7], #ul
#   [5, 7], #ur
#   [2, 3], #bl
#   [5, 3]  #br
# ]

# define rec1 with [[ul], [ur], [bl], [br]]
rec1 = [
  [3, 7], #ul
  [5, 7], #ur
  [3, 3],  #bl
  [5, 3]   #br
]
# define rec2 with [[ul], [ur], [bl], [br]]
rec2 = [
  [4, 10], #ul
  [7, 10], #ur
  [4, 6], #bl
  [7, 6]  #br
]






overlap_rec = [
  [],[],[],[]
  # [2, 7], #ul
  # [3, 7], #ur
  # [2, 5], #bl
  # [3, 5]  #br
]

# find ul point of new rec
ul_in_other_rec = ""

if rec1[0][0] > rec2[0][0] && rec1[0][1] < rec2[0][1]
  overlap_rec[0] = rec1[0]
  ul_in_other_rec = "rec1"
elsif rec2[0][0] > rec1[0][0] && rec2[0][1] < rec1[0][1]
  overlap_rec[0] = rec2[0]
  ul_in_other_rec = "rec2"
end

#find ur point of new rec
if ul_in_other_rec == "rec1"
  overlap_rec[1][1] = rec1[1][1]
  overlap_rec[1][0] = rec2[1][0]
elsif ul_in_other_rec == "rec2"
  overlap_rec[1][1] = rec2[1][1]
  overlap_rec[1][0] = rec1[1][0]
end

#find bl point of new rec
if ul_in_other_rec == "rec1"
  overlap_rec[2][0] = rec1[2][0]
  overlap_rec[2][1] = rec2[2][1]
elsif ul_in_other_rec == "rec2"
  overlap_rec[2][0] = rec2[2][0]
  overlap_rec[2][1] = rec1[2][1]
end

#find br point of new rec
if ul_in_other_rec == "rec1"
  overlap_rec[3][0] = rec2[3][0]
  overlap_rec[3][1] = rec2[3][1]
elsif ul_in_other_rec == "rec2"
  overlap_rec[3][0] = rec1[3][0]
  overlap_rec[3][1] = rec1[3][1]
end

p ul_in_other_rec
p "ul : #{overlap_rec[0]}"
p "ur : #{overlap_rec[1]}"
p "bl : #{overlap_rec[2]}"
p "br : #{overlap_rec[3]}"
p overlap_rec

binding.pry