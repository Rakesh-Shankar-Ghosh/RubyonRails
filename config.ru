# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

require_relative 'config/environment'
require_relative 'config/dbConnection'  # Add this line

DatabaseConnection.establish 

Rails.application.routes.draw do
    instance_eval(File.read(Rails.root.join('app/routes/student_route.rb')))
    # Other routes...
  end

run Rails.application
Rails.application.load_server
