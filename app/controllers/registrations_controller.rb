class RegistrationsController < Devise::RegistrationsController
    after_action :add_formuser
    before_action :delete_form_guest
    
    protected 

    def add_formuser 
        if resource.persisted?
            @id_guest = Guest.last.id
            @id_user = User.last.id
            @form = Form.find_by(guest_id: @id_guest)
            if @form 
                if @form.user_id == nil
                    @form.user_id = current_user.id
                    @form.save
                end
            end
            
           
         
        end
    end


    

    def delete_form_guest
        @empty_forms = Form.where(type_id: nil )
        @empty_forms.each do |form|
            form.destroy
        end
    end


   

    


   

    
   
    protected

    def after_sign_up_path_for(resource)
        
        if form?
            formfuction_path(current_user.id)  
        else 
            root_path
        end
    end

    
  


end
