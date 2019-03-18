class FormsController < ApplicationController

    def create 
        @find_guest = Guest.find(params[:guest_id])
        @number = params[:number]
       
        @id_form = Form.find_by(guest_id: @find_guest.id)
        @formuser = Formuser.find_by(guest_id: @find_guest.id)
        
        @id_form.activity_id = @number
        @formuser.activity_id = @number
    
         
          if @id_form.save && @formuser.save
              redirect_to guest_form_path(@find_guest.id,@id_form.id)
          else 
              redirect_to root_path
 
  
          end
    end

    def show 

        @id_guest = Guest.find(params['id'])
        @find_guest = Guest.find(params[:guest_id])
        @id_form = Form.find_by(guest_id: @find_guest.id)
        @formuser = Formuser.find_by(guest_id: @find_guest.id)

    end


    def update 
###################TESTING SHIT #############################
        @find_guest = Guest.find(params[:guest_id])
        @id_form = Form.find_by(guest_id: @find_guest.id)
        form_params = params.require(:comment).permit(:type)
        @id_form.update(form_params)
        redirect_to root_path
    
#######################################################    
    end
end
