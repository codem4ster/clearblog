require 'clearwater/component'

module Components
  module Partials
    # Main Layout
    class Header
      include Clearwater::Component

      def render
        header do
          div class: 'box' do
            div class: 'container head' do
              h2 { 'Codemaniac.net' }
              button(class: 'waves-effect waves-light btn') { 'Giriş Yap' }
            end
          end
          div class: 'container' do
            i(class: 'tiny material_icons') { 'home' }
            span(class: 'crumb') { 'Anasayfa' }
            i(class: 'tiny material_icons') { 'chevron_right' }
            span(class: 'crumb active') { 'Bir delinin hatıra defteri' }
          end
        end
      end
    end
  end
end