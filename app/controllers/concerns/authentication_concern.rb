# app/controllers/concerns/authentication_concern.rb
module AuthenticationConcern
    extend ActiveSupport::Concern
  
    included do
      before_action :authenticate_filter, only: [:testMethod] #[:testMethod,:testMethod2..... more than one can be applied]
      # more if u add
    end
  
    private
  
    def authenticate_filter
        if 5 == 55
            send(params[:action]) # Invoke the corresponding action
            puts "Possiive Filted Has Called...."
          else
            puts "Nagative Filted Has Called...."
            redirect_to "/getstudents", notice: "Successfully redirected!"
        end
    end
  end
  