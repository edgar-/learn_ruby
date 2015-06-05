def reverser(&blk)
  blk.call.split.each {|word| word.reverse! }.join(' ')
end 

def adder(n=1, &blk)
  blk.call + n
end

def repeater(n=1, &blk)
  n.times {blk.call}
end