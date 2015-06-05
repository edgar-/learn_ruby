class Book
  attr_reader :title
  CONJUNCTIONS = ['a','an','and','in','for','of','on','the']
  def title=(title)
    @title = title.capitalize.split.each do |wrd| 
      wrd.capitalize! unless CONJUNCTIONS.include?(wrd) 
    end.join(' ')
  end
end