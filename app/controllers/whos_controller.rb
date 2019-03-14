class WhosController < ApplicationController

    def index 
@whos = Who.all
@activities = Activity.all
@types = Type.all
@functions = Function.all

    end
    
end
