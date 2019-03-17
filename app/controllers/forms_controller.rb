class FormsController < ApplicationController

    def create 
        @find_guest = Guest.find(params[:guest_id])
        @number = params[:number]
       
        @id_form = Form.find_by(guest_id: @find_guest.id)
        
        
        @id_form.activity_id = @number
        
    
         
          if @id_form.save
              redirect_to guest_form_path(@find_guest.id,@id_form.id)
          else 
              redirect_to root_path
 
  
          end
    end
end
