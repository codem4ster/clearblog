require 'power_strip'

# Respond to all messages from websocket connection
class WsCable
  # Handle :message events in the "chat" channel.
  # @param message [PowerStrip::Message] the message we received
  # @param connection [Faye::WebSocket] the client connection this is from
  PowerStrip.on :message, channel: 'ws_cable' do |message, connection|
    pp message
    PowerStrip[message.channel].send :message, "Merhaba #{message.data['key']}"
  end
end