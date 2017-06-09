#write your code here
def add_ay(ay_lmao)
  ay_lmao = ay_lmao + "ay"
  ay_lmao
end

def move_consonant(move_me)
  catch_all = move_me.split("")
  breaker = false
  while breaker == false
    if catch_all[0] == "u" && catch_all.last == "q"
      hold_this = catch_all.shift
      catch_all.push(hold_this)
    elsif catch_all[0] == "a" || catch_all[0] == "e" || catch_all[0] == "i" || catch_all[0] == "o" || catch_all[0] == "u" || catch_all[0] == "y"
      breaker = true
    else
      hold_this = catch_all.shift
      catch_all.push(hold_this)
    end
  end
  move_me = catch_all.join
  move_me
end

def multiple_words(this_thing)
  the_words = this_thing.split(" ")
  how_many = the_words.length
  index = 0
  how_many.times do
    the_words[index] = move_consonant(the_words[index])
    the_words[index] = add_ay(the_words[index])
    index += 1
  end
  this_thing = the_words.join(" ")
end

def translate(translate_this)
  the_words = translate_this.split(" ")
  how_many = the_words.length
  if how_many == 1
    fixed_consonants = move_consonant(translate_this)
    add_ay(fixed_consonants)
  else
    multiple_words(translate_this)
  end
end
