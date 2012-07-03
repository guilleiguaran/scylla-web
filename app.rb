require "nancy"

class App < Nancy::Base
  include Nancy::Render
  use Rack::Static, :urls => ["/css", "/img", "/js"], :root => "public"

  get "/" do
    render "views/index.erb"
  end
end
