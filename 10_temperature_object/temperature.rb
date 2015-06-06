#DRY: Use celcius/fahrenheit conversion functions from 01_temperature exersice
require_relative "../01_temperature/temperature"
class Temperature
  class << self  
    def from_celsius(temp)  
      new(:c => temp)  
    end  
  
    def from_fahrenheit(temp)  
      new(:f => temp)  
    end  
  
    #private :new  http://blog.rubybestpractices.com/posts/gregory/059-issue-25-creational-design-patterns.html
  end  

  def initialize(temp={})
    @temp = temp
  end

  def in_fahrenheit
    return ctof(@temp[:c]) if @temp.has_key?(:c)
    @temp[:f]
  end

  def in_celsius
    return ftoc(@temp[:f]) if @temp.has_key?(:f)
    @temp[:c]
  end  
end

class Celsius < Temperature
  def in_fahrenheit
    return ctof(@temp)
  end

  def in_celsius
    @temp
  end 
end

class Fahrenheit < Temperature
  def in_celsius
    return ftoc(@temp)
  end

  def in_fahrenheit
    @temp
  end 
end