class CollectablesController < ApplicationController
    get '/collectables' do
        @collectables = Collectable.all
        erb :"/collectables/index"
    end

    get '/collectables/new' do
        if logged_in?
            erb :"/collectables/new"
        else
            flash[:error_message] = "Please log in to add a new collectable to your profile."
            redirect  "/"
        end
    end

    post '/collectables' do
        
        collectable = Collectable.new(name: params[:name], description: params[:description], image_url: params[:image_url], initial_cost: params[:initial_cost], current_appraisel: params[:current_appraisel], user_id: current_user.id)
        if collectable.save
        flash[:message] = "You have successfully added a new collectable!"
        redirect "/collectables/#{@collectable.id}"
        else
        flash[:error_message] = "Please fill in all fields! #{collectable.errors.full_messages.to_sentence}"
        redirect "/collectables/new"
        end
    end

    get '/collectables/:id' do
        @collectable = Collectable.find(params[:id])
        erb :"/collectables/show"
    end

    get '/collectables/:id/edit' do
        @collectable = Collectable.find(params[:id])
        if authorized?(@collectable)
        erb :"/collectables/edit"
        else
            flash[:error_message] = "Sorry! You are not authorized to edit."
            redirect "/collectables"
        end
    end

    patch '/collectables/:id' do
        @collectable = Collectable.find_by_id(params[:id])
        @collectable.name = params[:name]
        @collectable.description = params[:description]
        @collectable.image_url = params[:image_url]
        @collectable.initial_cost = params[:initial_cost]
        @collectable.current_appraisel = params[:current_appraisel]
        @collectable.save
        redirect to "/collectables/#{@collectable.id}"
    end

    delete '/collectables/:id' do
        @collectable = Collectable.find_by_id(params[:id])
        @collectable.destroy
        redirect to '/collectables'
      end

end
