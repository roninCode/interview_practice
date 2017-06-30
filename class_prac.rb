# time = Time.new
# time2 = time + 360
# p "time is #{time}"
# p "time2 is #{time2}"

# my_birth = Time.mktime(1986, 9, 8, 5, 1)
# p "my birthday is: #{my_birth}"
# p "On #{my_birth + 1_000_000_000} you will be 1 billion seconds old"  


# def how_old_you_are(birthdate)
#   seconds = birthdate.to_i
#   p "seconds #{seconds}"
#   minutes = birthdate.to_i / 60
#   p "minutes #{minutes}"
#   hours = minutes / 60
#   p "hours #{hours}"
#   days = hours / 24
#   p "days #{days}"
#   years = days / 365
#   p "years #{years}"
#   i = 1
#   years.times do 
#     p "Spank! For your #{i} birthday"
#     i += 1
#   end
# end

# how_old_you_are(Time.now)



class Die
  def initialize
    @numberShowing = roll
  end

  def numberShowing=(number)
    if number < 7 && number > 0
      @numberShowing = number
    end
  end
  
  def roll
    @numberShowing = 1 + rand(6)
  end
  
  def show
    p @numberShowing
  end
end

attack = [Die.new, Die.new, Die.new]
defend = [Die.new, Die.new]

attack_roll = attack.map do |die|
  die.roll
end

defend_roll = defend.map do |die|
  die.roll
end
# p "attack_roll #{attack_roll.sort { |x, y| y <=> x }}"
# p "defend_roll #{defend_roll.sort{ |x, y| y <=> x }}"

die1 = Die.new
die1.show
die1.numberShowing = 4
die1.show












