class CustomersController < ApplicationController
    
    def new
        @customers = Customer.new
        @customers.user user= current_user
        #@customers.users << current_user
    end
    
    def create
        binding.pry
    end
    
end
    
