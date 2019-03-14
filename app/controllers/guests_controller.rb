class GuestsController < ApplicationController
    def index 
    
    end

 def new
    @guest = Guest.last
 end

    def show
    end

    def create 
        @guest = Guest.new 
       puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
       puts @guest
       puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        
        if @guest.save 
            redirect_to guest_path(@guest.id)
        else 
            redirect_to root_path

        end
    end
end