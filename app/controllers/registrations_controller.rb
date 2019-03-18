class RegistrationsController < Devise::RegistrationsController
    after_action :add_formuser

    protected 

    def add_formuser 
        if resource.persisted?
            @formuser = Formuser.new
            @formuser.guest_id = Guest.last.id
            @formuser.save
        end
    end

end
