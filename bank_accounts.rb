class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  private
  def pin
    @pin = 1234
  end

  private
  def pin_error
    return "Access denied: incorrect PIN."
  end

  public
    def display_balance(pin_number)
      if pin_number == pin
        puts "Balance: $#{@balance}"
      else
        puts pin_error
      end
    end

  public
  def withdraw(pin_number, amount)
    if pin_number == pin && amount <= @balance
      @balance -= amount
      puts "Withdrew #{amount}. New balance: #{@balance}"
    elsif pin_number == pin && amount > @balance
      puts "Insufficient funds"
    else
      puts pin_error
    end
  end

  public
  def deposit(pin_number, amount)
    if pin_number == pin
      @balance += amount
      puts "$#{amount} has been deposited into the #{@name} account. New balance: $#{@balance}"
    else
      puts pin_error
    end
  end
end

class SavingsAccount < Account
  @@interest_rate = 10.2 #percent
  @@interest = @@interest_rate / 100 + 1
  public
  def interest(pin_number, years)
    @@principal = @balance
    (1..years).each do |m|
      @balance *= @@interest
    end
    puts "With a principal of $#{@@principal}, annual interest rate of #{@@interest_rate}% and a duration of #{years} years, ending balance: $#{@balance.round(2)} (+$#{(@balance - @@principal).round(2)} gain)"
  end
end

making_money = SavingsAccount.new("Billy", 50000)
making_money.interest(1234, 2)
