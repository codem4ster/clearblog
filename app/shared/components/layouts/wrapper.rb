require 'clearwater/component'

module Components
  module Layouts
    # Top Level Wrapper Layout
    class Wrapper
      include Clearwater::Component

      def render
        outlet || Components::Layouts::Main.new(Components::Pages::Home.new)
      end
    end
  end
end