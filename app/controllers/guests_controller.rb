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

       @number = params[:number]
       @last_guest_id = Guest.last.id


        @guest = Guest.new
        @form = Form.new
        @form.guest_id = @last_guest_id +1
        @form.who_id = @number
        if user_signed_in?
            @form.user_id = current_user.id
        end



         if @guest.save && @form.save
             redirect_to guest_path(@guest.id)
         else
             redirect_to root_path


         end
        end

      


end
