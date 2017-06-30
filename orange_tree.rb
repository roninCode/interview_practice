# Make an OrangeTree class. It should have a  height method which returns its height, and a  oneYearPasses method, which, when called, ages the tree one year. Each year the tree grows taller (however much you think an orange tree should grow in a year), and after some number of years (again, your call) the tree should die. For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees... whatever you think makes most sense. And, of course, you should be able to countTheOranges (which returns the number of oranges on the tree), and pickAnOrange (which reduces the @orangeCount by one and returns a string telling you how delicious the orange was, or else it just tells you that there are no more oranges to pick this year). Make sure that any oranges you don't pick one year fall off before the next year.


class OrangeTree
  attr_reader :alive
  attr_accessor :age, :height, :fruit
  def initialize
    @height = 1
    @age = 0
    @alive = true
    @fruit = 0
  end

  def one_year_passes
    @age += 1
    @height += 10
    if @age > 10
      @alive = false
      p "Your tree is dead!"
      exit
    end
    if @age > 4
      @fruit = @age ** 2
    end
  end

  def pick_orange
    if @fruit > 0
      @fruit -= 1
    else 
      p "There isn't any fruit to pick!"
    end
  end
end

tree = OrangeTree.new
p tree.age
p tree.height
p tree.fruit
p tree.pick_orange
5.times do 
  tree.one_year_passes
end
p tree.age
p tree.height
p tree.alive
p "fruit before pick #{tree.fruit}"
26.times do 
  tree.pick_orange
end
p "fruit after pick #{tree.fruit}"