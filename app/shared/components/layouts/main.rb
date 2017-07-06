require 'clearwater/component'

module Components
  module Layouts
    # Main Layout
    class Main
      include Clearwater::Component
      include Layoutable

      def render
        div([
              Components::Partials::Header.new,
              child,
              Components::Partials::Footer.new
            ])
      end
    end
  end
end
