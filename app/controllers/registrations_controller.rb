class RegistrationsController < Devise::RegistrationsController
    after_action :add_formuser
    protected 

    def add_formuser 
        if resource.persisted?
            @id_guest = Guest.last.id
            @id_user = User.last.id
            @form = Form.find_by(guest_id: @id_guest)
            if @form.user_id == nil
            @form.user_id = @id_user
            @form.save
            end
            
           
         
        end
    end

    
   
    protected

    def after_sign_up_path_for(resource)
        @form = Form.find_by(user_id: current_user.id)
        if @form == nil 
        root_path
        else 
        formfuction_path(current_user.id)  
        end
    end

    
  


end
