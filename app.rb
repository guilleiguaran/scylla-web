require "nancy"

class App < Nancy::Base
  include Nancy::Render
  use Rack::Static, :urls => ["/css", "/img", "/js"], :root => "public"

  get "/" do
    render("views/layout.erb"){ render "views/index.erb" }
  end

  get "/details" do
    render("views/layout.erb"){ render "views/details.erb" }
  end
end
