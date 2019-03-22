module Admin


class AdminsController < ApplicationController

    def index
        @users = User.all
        @formfuctions = Formfuction.all
        @charge = Charge.all
    end

    def new

    end

    def create

    end

    def show

    end


end




end
