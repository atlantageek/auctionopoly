class GameChannel < ApplicationCable::Channel
  after_subscribe :send_welcome_message
  def subscribed
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def join
  end
  private 
  def send_welcome_message
    #broadcast_to(...)
  end
end
