def measure(n=1, &blk)
  time = Time.now
  n.times { blk.call }
  return (Time.now - time)/n
end
