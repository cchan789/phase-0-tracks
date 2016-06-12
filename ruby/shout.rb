#module Shout
#  # we'll put some methods here soon, but this code is fine for now!
#  def self.yell_angrily(words) 
#   words + "!!!" + " :("
#  end

#  def self.yelling_happily(words)
 #   words + "???"
 # end

#end

#puts Shout.yell_angrily("get out of here!")
#puts Shout.yelling_happily("I am so excited!")


module Shout

  def scream_loudly(words)
    words = words.upcase
    puts words
  end
  
  def laugh_crazily(words)
    words = words.swapcase + " HAHAHAHAHAHA!!!"
    puts words
  end


end

class Teacher
  include Shout
end

class Police
  include Shout
end

teach = Teacher.new
poli = Police.new

teach.laugh_crazily("Bob you stupid idiot")
poli.scream_loudly("the building is going to explode")