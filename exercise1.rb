class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def balance
    return @balance
  end

  def interest_rate
    return @interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance = ((@interest_rate / 100.0) + 1) * @balance
  end

end

my_account = BankAccount.new(0, 2)

puts my_account.balance
my_account.deposit(500)
puts my_account.balance
my_account.gain_interest
puts my_account.balance
