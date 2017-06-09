#write your code here
def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(say_this, this_many = 2)
  speech = "#{say_this}"
  this_many -= 1
  this_many.times do
    speech += " #{say_this}"
  end
  speech
end

def start_of_word(the_word, place_number)
  adjust = place_number -1
  the_word[0..adjust]
end

def first_word(the_string)
  words_array = the_string.split
  words_array[0]
end

def titleize(capitalize_this)
  waiting_room = capitalize_this.split
  waiting_room.each{|i| i.capitalize!}
  waiting_room.each{|x| if x.downcase == "and" || x.downcase == "the" || x.downcase == "over"; x.downcase! end}
  waiting_room[0].capitalize!
  capitalize_this = waiting_room.join(" ")
  capitalize_this
end
