module Admin


    class UsersController < ApplicationController
    
        def index 
            @users = User.all
    
        end 
    
        def new 
            @user = User.new
    
        end
    
        def create 
            @user = User.new
            @user.last_name = params[:last_name]
            @user.first_name = params[:first_name]
            @user.role = params[:role]
            @user.email = params[:email]
            @user.password = params[:password]
            @user.password_confirmation = params[:password_confirmation]

            if @user.save 
                redirect_to admin_admins_users_path, success: "L'utilisateur a bien été créé"
            else
                render :new
            end
        end

        def edit 
            @id_user = User.find(params[:id])
            puts @id_user.last_name
        end

    
        def update 
           
            @id_user = User.find(params[:id])
            @id_user.last_name = params[:last_name]
            @id_user.first_name = params[:first_name]
            @id_user.role = params[:role]
            @id_user.email = params[:email]
            
            if @id_user.save
                redirect_to admin_admins_users_path, success: "L'utilisateur a bien été edité"
            else
                redirect_to root_path
            end

    
        end

        def destroy
            @id_user = User.find(params[:id])

        end
    
    
    end
    

     

   
    
    
    
    end