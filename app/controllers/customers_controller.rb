class CustomersController < ApplicationController
    
    def new
        @customers = Customer.new
        #@customers.users << current_user
    end
    
    def create
        binding.pry
    end
    
end
    
