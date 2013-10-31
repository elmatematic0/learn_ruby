class Changer

PENNY = 1
NICKEL = 5
DIME = 10
QUARTER = 25

  def make_change(num)
    change_array = []

    quarters = num/QUARTER
    dimes  = (num % QUARTER) / DIME
    nickels = (num % DIME) / NICKEL
    pennies = (num % NICKEL) / PENNY


    quarters.times {change_array << QUARTER}
    dimes.times {change_array << DIME}
    nickels.times {change_array << NICKEL}
    pennies.times {change_array << PENNY}
    puts "#{change_array}"
  end

end

change = Changer.new
change.make_change(25)
change.make_change(50)
change.make_change(10)
change.make_change(20)
change.make_change(7)
change.make_change(68)

