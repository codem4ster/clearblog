module Components
  module Pages
    # Test page
    class Home
      include Clearwater::Component

      def render
        div id: 'home-page'
      end
    end
  end
end