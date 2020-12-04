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
    return "@balance 
  end 
  
  def valid? 
    return status == "open" 
  end
  
  
end
