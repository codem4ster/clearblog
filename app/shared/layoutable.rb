# It gives layout components the ability to render the child components
module Layoutable

  attr_reader :child

  def initialize(child = nil)
    @child = child
  end

end