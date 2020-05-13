class CollectablesController < ApplicationController
    get '/collectables' do
        @collectables = Collectable.all
        erb :"/collectables/index"
    end

    get '/collectables/:id' do
        @collectable = Collectable.find(params[:id])
        erb :"/collectables/show"
    end

end
