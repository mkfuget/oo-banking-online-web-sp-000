class Transfer

  attr_accessor :sender, :receiver, :status
  def intiialize(sender, receiver)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end 
  
  def valid? 
    rerutn @sender.valid? && @receiver.valid? 
  end 
  
  

end
