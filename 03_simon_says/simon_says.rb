def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat (string, n = 2)
  repeated = string
  (n-1).times { repeated = "#{repeated} #{string}" }
  return repeated
end

def start_of_word(string, n)
  string.slice(0, n)
end

def first_word(string)
  string.split[0]  
end

def titleize(str)
  lil_words = ['a','and','an','in','at','for','on','over','the','then','than','with']
  str = str.split.each { |word| word.capitalize! unless lil_words.include?(word)}
  str[0].capitalize!
  str = str.join(' ')
end