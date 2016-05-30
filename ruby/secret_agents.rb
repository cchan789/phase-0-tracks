#Given the password for Encryption,I code for the while loop.
# For each letter in the string I move it forward one letter, for the complete password
#Now I return the new encrypted password.
def encrypt(password)
  a = 0
    while a < password.length
      if password[a] != "z"
        password[a] = password[a].next
      else
        password[a] = "a"
      end
    a += 1
    end
    # puts password
    return password
end

#Given the password for Decryption,I code for the while loop.
# For each letter in the string I move it backward one letter, for the complete password
#Now I return the new Decrypted password.
def decrypt(password)
  decrypter = "abcdefghijklmnopqrstuvwxyz"
  a = 0
  b = 0
  while a < password.length
      b = decrypter.index(password[a])
      #if b == 0
       # password[a] = "z"
      #else
      #Edge case is provided above. But on testing by commenting out the Edge case codes;we found that the Edge case provision is not necessary.
        password[a] = decrypter[b-1]
      #end
    a += 1
  end
  # puts password
  return password
end

#Pseudocode for User Interface
#First I ask the user if he choses Encryption or Decryption method
# Then I ask him to input his password
#Then I call the appropriate method 
# Then I print the the altered password on the screen

def decry_encry()
  puts "Good day, agent. Would you like to encypt or decrypt a password?"
  puts "Please input whichever of the two you need (encrypt or decrypt)"
  option = gets.chomp
  puts "Thank you. Now, if you would, please input the password which needs to be operated on"
  pass = gets.chomp
  if option == "encrypt"
    encrypt(pass)
    puts "encrypted password is: " + pass
  elsif option == "decrypt"
    decrypt(pass)
    puts "decrypted password is: " + pass
  else
    puts "invalid option, terminal will self destruct in 5 seconds"
  end
end

# encrypt("zed")
# decrypt(encrypt("zed"))
decry_encry()