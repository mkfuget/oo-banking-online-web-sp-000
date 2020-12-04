class BankAccount
  attr_accessor :balance, :status
  def initialize(name, balance = 1000, status = "open") 
    @name = name 
    @balance = 1000
    @status = status
  end 
  
  def deposit(amount)
    @balance += amount 
  end 
  
  def display_balance 
    return "Your balance is $#{@balance}."
  end 
  
  def valid? 
    return status == "open" && @balance > 0
  end
  
  def close_account
    @close_account = "closed" 
  end 
  
end
