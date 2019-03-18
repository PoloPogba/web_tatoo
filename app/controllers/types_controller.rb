class TypesController < ApplicationController


    def create 
        @find_guest = Guest.find(params[:guest_id])
        @type_id = params[:type_id]
       
        @id_form = Form.find_by(guest_id: @find_guest.id)
        @formuser = Formuser.find_by(guest_id: @find_guest.id)     
        
        @id_form.type_id = @type_id
        @formuser.type_id = @type_id

        
         
        
    
         
          if @id_form.save && @formuser.save
              redirect_to guest_form_type_path(@find_guest.id,@id_form.id,@type_id)
          else 
              redirect_to root_path
 
  
          end
    end

   
end
