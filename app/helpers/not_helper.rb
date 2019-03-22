module NotHelper
    
    def not_form
        @form = Form.find_by(user_id: current_user.id)
        if @form 
            return false
        else
            return true
        end
        
    end

  end