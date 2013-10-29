def reverser 
  a = yield
  b = a.split
  c = b.map { |z| z.reverse }.join(' ')
end

def adder(n=1)
  a = yield 
  a + n
end

def repeater(n=1)
  n.times {yield}
end


