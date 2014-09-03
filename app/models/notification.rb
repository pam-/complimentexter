require 'twilio-ruby'

class Notification
  attr_accessor :to_number

  def initialize
    account_sid = "ACda60e158299d5121bed6fb400148e653"
    auth_token = "c43b023d95002071e4742b2428f84622"
    @client = Twilio::REST::Client.new(account_sid, auth_token)

  end

  def text
    # Sends a text to your phone number
    message = @client.messages.create(body: random_compliment, to: '+12406912665', from: '+14847023658')
  end

  def random_compliment
    # Generates a random compliment to send to the textee
    
  end

end