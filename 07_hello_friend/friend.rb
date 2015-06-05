class Friend 
  def greeting(name = '')
    return "Hello #{name}!" unless name.empty?
    "Hello!"
  end
end 