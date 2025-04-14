require "sinatra"
require "sinatra/reloader"

get("/howdy") do

  erb(:howdy)

end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
