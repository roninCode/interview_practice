module Speak
  def speak(sound)
    p "#{sound}"
  end
end

class GoodDog
  attr_accessor :name, :height, :weight
  
  def initialize(n, w, h)
    @name = n
    @height = h
    @weight = w

  end
  
  def bark
    p "#{name} says woof woof woof"
    return "#{name} says woof woof woof"
  end

  def change_info(n, h, w)
    self.name = name
    self.height = h
    self.weight = w
  end

  def info
    p "#{name} weighs #{weight} and is #{height} tall"
    return "#{self.name} weighs #{self.weight} and is #{self.height} tall"
  end

  def some_method
    self.info
  end

  include Speak
end


class HumanBeing
  include Speak
end

sparky = GoodDog.new("Sparky", 3, 40)
p sparky.name
sparky.speak("Hello")
sparky.bark

fido = GoodDog.new("Fido", 2, 24)
fido.bark
fido.change_info("jack", 4, 44)

p [1,2,3,4].last(2)
sparky.info
fido.info
fido.some_method