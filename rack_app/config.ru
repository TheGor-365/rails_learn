class MyApp
  def call(_env)
    [200, {'Content-Type' => 'text/html'}, ["Hello"]]
  end
end

run MyApp.new
