module FindHelper
    
    def form?
        @user_id = User.last.id
        @form = Form.find_by(user_id: @user_id+2)
        if @form 
            return true
        else
            return false
        end
        
    end

  end