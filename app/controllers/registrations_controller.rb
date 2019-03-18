class RegistrationsController < Devise::RegistrationsController
    after_action :add_formuser
    protected 

    def add_formuser 
        if resource.persisted?
            @id_guest = Guest.last.id
            @id_user = User.last.id
            @formuser = Formuser.find_by(guest_id: @id_guest)
            @formuser.user_id = @id_user
            @formuser.save
           
         
        end
    end

    def redirect 
        redirect_to formuser_path(1)
    end

end
