# class ThisClass

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

# end

# my_profile = ThisClass.new("Aaron", 34)

class Pet

  attr_accessor :name, :sound, :fixed

  def initialize(name, sound, fixed)
    @name = name
    @sound = sound
    @fixed = fixed
  end

end

all_the_pets = []
completion = false

puts "Enter pet data, type 'done' when finished"

while completion == false
  print "Name? "
  name = gets.chomp
  break if name.downcase == "done"

  sleep(0.1)

  print "Sound? "
  sound = gets.chomp

  sleep(0.1)

  print "Fixed? put yes or no "
  fixed = gets.chomp

  sleep(0.1)

  if fixed.downcase == "yes"
    fixed = true
  elsif fixed.downcase == "no"
    fixed = false
  end

  pet_profile = Pet.new(name, sound, fixed)
  all_the_pets.push(pet_profile)
  puts "Pet Profile Saved."
  sleep(0.1)

end

all_the_pets.each do |pet|
   puts ""
   puts pet.name
   sleep(0.2)
   puts pet.sound
   sleep(0.2)
   puts pet.fixed
   sleep(0.4)
end