def layout(name, page)
  Components::Layouts.const_get(name).new page
end

Page = Components::Pages

# Router
Routes = proc do
  route 'admin' => layout(:Admin, Page::Admin::Dashboard.new)
  route 'home' => layout(:Main, Page::Home.new)
end