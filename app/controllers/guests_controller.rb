class GuestsController < ApplicationController
    def index 
        
    end

 def new
    @guest = Guest.last
 end

    def show
        @id_guest = Guest.find(params['id'])
    end
   
    def create 
       
        @last_guest_id = Guest.last.id
        @guest = Guest.new 
        puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        puts @guest
        puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

        @form = Form.new
        @form.guest_id = @last_guest_id +1
        @form.who_id = 1
        puts $number
        puts @form.who_id
         if @guest.save && @form.save
             redirect_to guest_path(@guest.id)
         else 
             redirect_to root_path

 
         end
        end
    
       
    
end