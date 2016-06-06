#Alias Manager 
#Pseudocode for 5.6
#Ask agent for his full name (first_name, last_name)
#I swap the first_name and the last_name
#I change each vowel to its next vowel
#I also change each consonant to its next consonant
#Now I capitalize the new fake name


def next_vowel(a)
  vowels = "aeiou"
  i = 0
  while vowels[i] != a
    i +=1
  end
  if i != 4
    a = vowels[i+1]
  else
    a = vowels[0]
  end
end

def next_consonant(b)
  if "aeiou".include? b.next
    b = b.next.next
  elsif b == "z"
    b = "b"
  else
    b = b.next
  end
end

#puts next_consonant("d")
#puts next_vowel("u")
name_stor = {}
finished = false

puts"Please input user name for conversion"
fullname = gets.chomp
until finished do
  namearr = fullname.split
  namearr.reverse!
  namearr.map! do |st|
    st.downcase!
    # st.reverse!
    # thought the name needed to be reversed in order also
    st.chars.map! do |ch|
      if "aeiou".include? ch
        next_vowel(ch)
      else
        next_consonant(ch)
      end
    end
  end
  
 # p namearr
  
  namearr.map! do |str|
    str = str.join('')
    str.capitalize!
  end
 
  #p namearr
  namearr = namearr.join(" ")
  p namearr

  fullname = fullname.to_sym
  name_stor[fullname] = namearr
  
  puts "If you are finished, please input quit or a blank name (no characters)"
  puts "If you are not finished, please input the next name for conversion"
  fullname = gets.chomp
  if fullname == "quit" || fullname.length == 0
     finished = true
  else
    
  end 
end

name_stor.each do |key,value|
  puts "#{key} is also known as #{value}"
end