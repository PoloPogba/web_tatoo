class FormusersController < ApplicationController

    def show
    @formuser = Formuser.find_by(user_id: current_user.id)
    
    end
end
