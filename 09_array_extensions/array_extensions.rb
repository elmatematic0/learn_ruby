class Array
  
  def sum
    self.reduce(0, :+)    
  end

  def square
    self.each_with_object([]) {|item, index| index<< item**2}
  end

  def square!
    self.map! { |item| item**2}
  end
end
