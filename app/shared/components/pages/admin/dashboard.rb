module Components
  module Pages
    module Admin
      # Test page
      class Dashboard
        include Clearwater::Component

        def render
          h1 'Welcome to the page content'
        end
      end
    end
  end
end