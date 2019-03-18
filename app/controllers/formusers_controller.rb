class FormusersController < ApplicationController

    def show
    @id_formusers = Formuser.find(1)
    
    end
end
