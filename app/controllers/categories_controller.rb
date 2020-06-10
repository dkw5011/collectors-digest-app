class CategoriesController < ApplicationController
    get '/categories/:id' do
       @category = Category.find(params[:id]) 
       erb :'/categories/show'
    end

end
