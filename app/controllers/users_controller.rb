class UsersController < ApplicationController
    get '/login' do
        erb :login
    end

    post '/login' do
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            session[:user_id] = users.id

            redirect to '/user/#{user.id}'
        else
            redirect to '/login'
        end
    end

    get '/user/:id' do
        "Welcome"
    end

end
