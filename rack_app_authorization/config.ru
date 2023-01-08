use Rack::Auth::Basic do |username, password|
  username == 'admin' && password == 'password'
end

class App
  def call(env)
    puts env["HTTP_AUTHORIZATION"]
    [200, {'Content-Type' => 'text/html'}, ["You are loggined successfully"]]
  end
end
run App.new
