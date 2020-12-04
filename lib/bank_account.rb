class BankAccount
  attr_accessor :name, :balance, :status
  def initialize(name) 
    @name = name 
    @balance = 1000
    @status = open
  end 
  
  def deposit(amount)
    @balance += amount 
  end 
  
  def display_balance 
    puts @balance 
  end 
  
  def valid? 
    return status == open 
  end
  
  
end
