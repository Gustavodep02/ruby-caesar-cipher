def caesar_cipher(string, shift)
  i = 0
  new_string = ""
  while(i<string.length)
    char = string[i]
    if char.ord >= 65 && char.ord <= 90
      char_ascii = char.ord + shift
      if char_ascii > 90
        char_ascii = 65 + (char_ascii - 91)
      end
      new_string += char_ascii.chr
    elsif char.ord >= 97 && char.ord <= 122
      char_ascii = char.ord + shift
      if char_ascii > 122
        char_ascii = 97 + (char_ascii - 123)
      end
      new_string += char_ascii.chr
    else
      new_string += char
    end
    i+=1
    
  end
  return new_string
end