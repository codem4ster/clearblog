require 'clearwater/component'

module Components
  module Partials
    # Main Layout
    class Header
      include Clearwater::Component

      def render
        header(
          [
            div({ class: 'box' },
                div({ class: 'container head' },
                    [h2('Codemaniac.net'),
                     button({ class: 'waves-effect waves-light btn' }, 'Giriş Yap')])),
            div({ class: 'container' },
                [i({ class: 'tiny material-icons' }, 'home'),
                 span({ class: 'crumb' }, 'Anasayfa'),
                 i({ class: 'tiny material-icons' }, 'chevron_right'),
                 span({ class: 'crumb active' }, 'Bir delinin hatıra defteri')])
          ]
        )
      end
    end
  end
end