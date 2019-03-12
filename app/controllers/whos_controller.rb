class WhosController < ApplicationController

    def index 
@who = Who.all
@activity = Activity.all
@type = Type.all
@function = Function.all

    end
    
end
