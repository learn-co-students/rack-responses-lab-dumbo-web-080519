class Application

  def call(env)
    resp = Rack::Response.new

    current_hour = Time.now.hour
    resp.write Time.now
    if current_hour < 12
      resp.write "\nGood Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
