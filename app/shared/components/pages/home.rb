module Components
  module Pages
    # Test page
    class Home
      include Clearwater::Component

      def render
        h1 'This is test page'
      end
    end
  end
end