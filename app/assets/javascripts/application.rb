require 'opal'
require 'jquery/jquery-3.2.1.min'
require 'opal-jquery'
require 'materialize/js/bin/materialize.min'
require 'clearwater'
require 'power_strip'
require 'console'
require 'requires'

def pp_log(data)
  $console.log(data)
end

# This URL should point to where you have PowerStrip mounted on the server
client = PowerStrip::Client.new('ws://localhost:3000/ws_cable')
client.on(:connect) do
  pp_log('connected')
end
client.on(:disconnect) { pp_log 'disconnected' }

channel = client.subscribe(:ws_cable)

channel.on :connect do
  pp_log('subscribed')
end

channel.message(key: 'Onur')

channel.on :message do |message|
  pp_log message.data
end

Clearwater::Application.new(
  component: Components::Layouts::Wrapper.new,
  element: Bowser.document['#app'],
  router: Clearwater::Router.new(&Routes)
)


