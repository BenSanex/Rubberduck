class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "rooms"
  end
end
