class Transfer

  attr_accessor :sender, :receiver, :status, :amount
  def intiialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
  
  def valid? 
    return @sender.valid? && @receiver.valid? 
  end 
  
  

end
