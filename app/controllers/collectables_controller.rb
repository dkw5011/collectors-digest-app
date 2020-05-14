class CollectablesController < ApplicationController
    get '/collectables' do
        @collectables = Collectable.all
        erb :"/collectables/index"
    end

    get '/collectables/new' do
        erb :"/collectables/new"
    end

    post '/collectables' do
        collectable = Collectable.create(name: params[:name], description: params[:description], image_url: params[:image_url], initial_cost: params[initial_cost], current_appraisel: params[:current_appraisel], user_id: current_user.id)
        redirect "/collectables/#{collectable.id}"
    end

    get '/collectables/:id' do
        @collectable = Collectable.find(params[:id])
        erb :"/collectables/show"
    end

end
