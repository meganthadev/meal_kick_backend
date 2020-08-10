class CategoriesController < ApplicationController

    def index 
       categories = Category.all
       render json: CategorySerializer.new(categories).to_serialized_json
    end 

    def show 
        category = Category.find(params[:id])
        render json: CategorySerializer.new(category).to_serialized_json
    end 

    private

    def category_params(*args)
        params.require(:category).permit(*args)
    end


end
