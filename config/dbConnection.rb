# config/database_connection.rb

# config/database_connection.rb

require 'active_record'
require 'dotenv'

Dotenv.load

module DatabaseConnection
  def self.establish
    database_url = ENV['DATABASE_URL']
    
    begin
      ActiveRecord::Base.establish_connection(database_url)
      puts "Database connection successful"
    rescue StandardError => e
      puts "Database connection failed: #{e.message}"
    end
  end
end
