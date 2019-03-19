class UsersController < ApplicationController
    def show
        @user = User.find(current_user.id)
        @form = Form.find_by(user_id: current_user.id)
        @who = Who.find(@form.who_id)
        @activity = Activity.find(@form.activity_id)
        @type = Type.find(@form.type_id)
        @functions = Function.all
    end
end
