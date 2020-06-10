class UsersController < ApplicationController
    
    get '/login' do
        erb :'/users/login'
    end

    post '/login' do
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password])
        
            session[:user_id] = @user.id
            flash[:message] = "Hello! Welcome Back #{@user.name}."
            redirect "/users/#{@user.id}"
        else
            flash[:error_message] = "Your credentials are invalid. Please try again or sign up."
            redirect '/login'
        end
    end

    get '/users/:id' do
        @user = User.find_by(id: params[:id])
        # binding.pry
        erb :'/users/show'
    end

    get '/signup' do
        erb :'/users/signup'
    end

    post '/users' do
        
        @user = User.new(params)
        if @user.save
        session[:user_id] = @user.id
        flash[:message] = "Hello! Welcome #{@user.name}."
        redirect "/users/#{@user.id}"
        
        else
        
        redirect '/signup'
        end
    end

    get '/logout' do
        session.clear
        redirect '/'
    end


end
