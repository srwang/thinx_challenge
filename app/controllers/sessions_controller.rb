class SessionsController < ApplicationController

    def index
        render :index
    end

    def create 
        user = User.find_by({name: params[:username]})
        if user && user.password == params[:password]
            	session[:user_id] = user.id
                redirect_to root_path
        else
            flash[:error] = 'Incorrect Username or Password'
            redirect_to(:back)
        end
    end

    def new
        if params[:password] == params[:password_confirmation]
            if User.create({name: params[:username], password: params[:password]}).valid?
                session[:user_id] = user.id
            else 
                flash[:error_two] = 'Sorry, #{params[:username]} has been taken'
                redirect_to(:back) 
            end
        else 
            flash[:error_two] = 'Please confirm your password'
            redirect_to(:back) 
        end
    end

    def destroy 
        session[:user_id] = nil
        redirect_to sessions_path
    end 

end