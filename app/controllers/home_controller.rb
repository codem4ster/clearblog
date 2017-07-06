# Main site pages
class HomeController < ApplicationController
  def index
    @app = Clearwater::Application.new(
      component: Components::Layouts::Wrapper.new,
      router: Clearwater::Router.new(location: request, &Routes)
    )
  end
end