class Transfer

  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
  
  def valid? 
    return @sender.valid? && @receiver.valid? 
  end 
  
  def execute_transaction 
    if(@amount < @sender.balance)
      @sender.balance -= @amount
      @receiver.balance += @amount 
      @status = "complete"
      return @status
    else 
      return ""
      
    
  end
  
  

end
