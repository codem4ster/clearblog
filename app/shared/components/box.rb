module Components
  # Multiporpose box component
  class Box
    include Clearwater::Component

    def render
      div({ class: 'box' }, 'Deneme kutusu')
    end
  end
end