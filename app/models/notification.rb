require 'twilio-ruby'

class Notification
  attr_accessor :to_number

  def initialize(options={})
    self.to_number = options[:to_number]
    account_sid = ENV["twilio_sid"]
    auth_token =  ENV["twilio_token"]
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def text
    # Sends a text to your phone number
    message = @client.messages.create(body: random_compliment, to: self.to_number, from: '+14847023658')
  end

  def random_compliment
    # Generates a random compliment to send to the textee
    compliments = ['Your code is so dry it makes me thuuursty!', 'Your so awesome!', 'Hey girl, wanna clone my repo?', 'GIT PUSH IT!!', 'No limit, you are just like an infinite loop baybay.' ]
    compliments.sample
  end

end