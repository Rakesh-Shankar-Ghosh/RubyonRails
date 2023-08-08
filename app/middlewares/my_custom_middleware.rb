# app/middleware/my_custom_middleware.rb

class MyCustomMiddleware
    def initialize(app)
      @app = app
    end
  
    def call(env)
      if 5 == 5
        puts "Middleware: 5 equals 5, invoking the next middleware"
        @app.call(env) # Invokes the next middleware in the pipeline
      else
        puts "Middleware: 5 is not equal to 5, skipping the next middleware"
        [200, { 'Content-Type' => 'text/html' }, ['Hello from MyCustomMiddleware']]
      end
    end
end
  