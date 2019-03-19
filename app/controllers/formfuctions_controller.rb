class FormfuctionsController < ApplicationController
    def show
        @user = User.find(current_user.id)
        @form = Form.find_by(user_id: current_user.id)
        @who = Who.find(@form.who_id)
        @activity = Activity.find(@form.activity_id)
        @type = Type.find(@form.type_id)
        @functions = Function.all
    end

    def create 
        @form = Form.find_by(user_id: current_user.id)
        @function_id = params[:number]
       

        @formfuction = Formfuction.new 
        @formfuction.form_id = @form.id
        @formfuction.function_id = @function_id

        if @formfuction.save
            redirect_to formfuction_path(current_user.id)
        end


        



    end


    def destroy 
        @form = Form.find_by(user_id: current_user.id)
        @function_id = params[:number]
        @formfuction = Formfuction.find_by(function_id: @function_id, form_id: @form.id)
        puts '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
        puts @formfuction
        puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        
        if @formfuction.destroy
            redirect_to formfuction_path(current_user.id)
        end

    end

    
   
   
    # def update 

    #    @id_comments = Comment.find(params["id"])
     #   comment_params = params.require(:comment).permit(:content)
      #  @id_comments.update(comment_params)
       # redirect_to gossip_path($id_gossip)
        
        #end
end
