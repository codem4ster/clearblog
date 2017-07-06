require 'clearwater/component'

module Components
  module Partials
    # Main Layout
    class Header
      include Clearwater::Component

      def render
        h1 'This is heading section'
      end
    end
  end
end