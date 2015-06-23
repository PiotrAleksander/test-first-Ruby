def pig(word)
  vowels = ["a","e","i","o","u"]
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
  letter_array = word.split("")
  first_letter = letter_array[0]
  second_letter = letter_array[1]
  third_letter = letter_array[2]

  if first_letter == "q"
    2.times do
      letter_array.shift
    end
    letter_array << first_letter << second_letter
    return letter_array.join("") + "ay"
  end

  if second_letter == "q"
    3.times do
      letter_array.shift
    end
    letter_array << first_letter << second_letter << third_letter
    return letter_array.join("") + "ay"
  end

  if vowels.include?(first_letter)
    word + "ay"
  elsif consonants.include?(first_letter)
    if consonants.include?(second_letter)
      if vowels.include?(third_letter)
        2.times do
          letter_array.shift
        end
        letter_array << first_letter << second_letter
        letter_array.join("") + "ay"
      else
        3.times do
          letter_array.shift
        end
        letter_array << first_letter << second_letter << third_letter
        letter_array.join("") + "ay"
      end
    elsif vowels.include?(second_letter)
      letter_array.shift
      letter_array << first_letter
      letter_array.join("") + "ay"
    end
  end

end
def translate(mystring)
  word_array = mystring.split(" ")
  new_array = word_array.map do |word|
    pig(word)
  end
  new_array.join(" ")
end