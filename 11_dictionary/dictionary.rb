class Dictionary
  attr_reader :entries
  
  def initialize
    @entries = {}
  end
  
  def add(entry)
    entry.is_a?(Hash) ? @entries.merge!(entry) : @entries[entry] = nil 
  end

  def keywords
    @entries.keys.sort
  end
  
  def include?(key)
    @entries.has_key?(key)
  end

  def find(key)
    result = {}
    
    @entries.each do |k,v|
      result[k] = v if k.include?(key)
    end
    return result
  end

  def printable
    printable = ''
    @entries.map do |array| 
        %Q{[#{array.first}] "#{array.last}"}
    end.sort.join("\n")
  end
end