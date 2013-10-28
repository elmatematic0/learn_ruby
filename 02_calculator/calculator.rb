def add(a, b)
  addition = a + b
end

def subtract(a, b)
  subtraction = a - b
end

def sum(a)
  a.inject(0){|sum,i| sum+i}
end

# def multiply(a, b)
#   multiplies = a * b
# end

def multiply(a)
  a.inject(1){|mult, i| mult * i}
end

def fact(n)
  if n==0
    1
  else
    n*fact(n-1)
  end
end