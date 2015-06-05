def translate(str)
  translated = []
  str.split.each do |word|
    translated << translate_word(word)   
  end
  translated.join(' ')
end

def translate_word(word)
  vowels = ['a','e','i','o','u']
  temp = []

  while word.length > 0
    if word.slice(0, 2) == 'qu'
      temp << word.slice!(0, 2) 
    elsif (vowels.include?(word.slice(0)))
      return "#{word}#{temp.join}ay"        
    else
      temp << word.slice!(0)
    end
  end
  return "#{temp.join}ay"
end