class RegistrationsController < Devise::RegistrationsController
    after_action :add_formuser
    protected 

    def add_formuser 
        if resource.persisted?
            @id_guest = Guest.last.id
            @id_user = User.last.id
            @form = Form.find_by(guest_id: @id_guest)
            @form.user_id = @id_user
            @form.save
            @formfuction = Formfuction.new 
            @formfuction.form_id = @form.id
            @formfuction.save
           
         
        end
    end
   
    
  


end
