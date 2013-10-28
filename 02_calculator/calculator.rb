def add(a, b)
  addition = a + b
end

def subtract(a, b)
  subtraction = a - b
end

def sum(a)
  a.inject(0){|sum,i| sum+i}
end
