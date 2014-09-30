class BlaclistEmailsInterceptor
  def self.delivering_email(message)
      puts "This code should execute before sending of every email"
      #emails =  message.to
      #message.to = emails.reject{|a| a == "branden.mittra@streamingwell.com"}
      message.to = message.to - ["karen.pearce@astellas.com", "test@streamingwell.com"]
      # message.to is an array of emails , you can delete as many emails from it 
      # toy can put in any logic here to remove emails form message.to array
  end
end
