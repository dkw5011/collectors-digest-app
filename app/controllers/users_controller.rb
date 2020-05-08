class UsersController < ApplicationController
    get '/login' do
        erb :'/users/login'
    end

    post '/login' do
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id

            redirect to '/user/#{user.id}'
        else
            redirect to '/login'
        end
    end

    get '/user/:id' do
        @user = User.find_by(id: params[:id])
        erb :'/users/show'
    end

    get '/signup' do
        erb :'/users/signup'
    end

    post '/users' do
        @user = User.create(params)
        session[:user_id] = @user.id
        redirect to '/users/#{@user.id}'
    end

    get '/logout' do
        session.clear
        redirect to '/'
    end


end
