class Application

    def call(env)
        resp = Rack::Response.new
        greeting = Time.now.strftime("%H").to_i > 12 ? "Good Afternoon" : "Good Morning" 
        resp.write (greeting)
        resp.finish
    end

end