class Application

  def call(env)
    time = Time.now
    resp = Rack::Response.new
    if time.hour < 12
      resp.write "Good Morning!"
    elsif time.hour >= 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
