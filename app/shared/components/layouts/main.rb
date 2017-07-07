require 'clearwater/component'

module Components
  module Layouts
    # Main Layout
    class Main
      include Clearwater::Component
      include Layoutable


      def render
        div do
          render_component Components::Partials::Header.new
          render_component child.new if child
          Components::Partials::Footer.new.render
        end
      end
    end
  end
end
