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
    if(@status != "pending")
      return "transaction complete"
    end
    if(@amount < @sender.balance)
      @sender.balance -= @amount
      @receiver.balance += @amount 
      @status = "complete"
    else 
      return "Transaction rejected. Please check your account balance."
    end 
    
    return @status

  end
  
  def reverse_transfer 
    if( @status == "complete")
      @sender.balance += @amount
      @receiver.balance -= @amount 
      @status = "complete"
    end
    return @status
  end 
  
  

end
