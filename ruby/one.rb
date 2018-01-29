class Account
	attr_reader :name
  def initialize(name, balance=100, pin)
    @name = name
    @balance = balance
    @pin = pin
  end

  def display_balance(pin_number)
    if pin_number == pin
      puts "Balance: $#{@balance}"
      else
      puts pin_error
    end
  end

  def deposit(pin_number, amount)
    if pin_number == @pin
      @balance += amount
      puts "Deposit #{amount}. New balance: $#{@balance}."
      else
      puts pin_error
    end
  end

  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end

  def change_pin
    print "Your old pin: "
    old_pin = gets.chomp.to_i
    if old_pin == @pin
			print "Your new pin: "
      @pin = gets.chomp.to_i
      puts "Your pin has been changed."
      else
      puts "Wrong pin number! Try again? (y/n)"
      gets.chomp == "y" ? change_pin : nil
    end
  end


  private

  def pin_error
    return "Access denied: incorrect PIN."
  end
end

class CheckingAccount < Account
end

class SavingAccount < Account
end

checking_account = Account.new("Binh", 1000_000, 12345)
checking_account.change_pin
