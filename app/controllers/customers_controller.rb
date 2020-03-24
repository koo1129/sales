class CustomersController < ApplicationController
    
    def new
        @customers = Customer.new
        @customers.user user= current_user
        #@customers.users << current_user
    end
    
    def create
        @customers = Customer.new
        if @customers.save
          redirect_to root_path, notice: '登録が完了しました'
        else
          render :new
        end
    end
end