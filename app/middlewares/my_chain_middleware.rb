# app/middleware/my_custom_middleware.rb

class MyCustomMiddleware2
    def initialize(app)
      @app = app
    end
  
    def call(env)
      if condition1(env)
        puts "Middleware: Condition 1 is met, proceeding to next middleware"
        middleware_1(env)
      elsif condition2(env)
        puts "Middleware: Condition 2 is met, proceeding to next middleware"
        middleware_2(env)
      else
        puts "Middleware: No conditions met, invoking the next middleware"
        @app.call(env)
      end
    end
  
    private
  
    def condition1(env)
      # Check your condition here
    end
  
    def condition2(env)
      # Check another condition here
    end
  
    def middleware_1(env)
      # Perform middleware logic for condition 1
      # You can call the next middleware in the chain or return a response
    end
  
    def middleware_2(env)
      # Perform middleware logic for condition 2
      # You can call the next middleware in the chain or return a response
    end
  end
  