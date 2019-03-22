module FindingHelper
    
    def find_function 
       
        @formfuction_user = Formfuction.find_by(form_id: @form.id, function_id: @i )

    end

  end