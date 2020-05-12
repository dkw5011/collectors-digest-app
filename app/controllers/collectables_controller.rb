class CollectablesController < ApplicationController
    get 'collectables' do
        @collectables = Collectable.all
        erb :'/collectables/index'
    end
end
