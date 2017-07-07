require 'clearwater/component'

module Components
  module Layouts
    # Main Layout
    class Admin
      include Clearwater::Component
      include Layoutable

      def render
        div do
          Components::Partials::Header.new
          h3 { 'This is admin page 2' }
          child
          Components::Partials::Footer.new
        end
      end
    end
  end
end