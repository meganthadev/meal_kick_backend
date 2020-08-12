class Api::V1::CategoriesController < ApplicationController

    def index 
        categories = Category.all
        render json: CategorySerializer.new(categories)
    end 
 
    def create 
        category = Category.new(category_params)
        if category.save 
            render json: category, status: :accepted
        else  
            render json: {errors: category.errors.full_messages}, status: :unproccesible_entity
        end 
    end 

    def show 
        category = Category.find_by(params[:id])
        render json: CategorySerializer(categories)
    end 

    private

    def category_params
        params.require(category).permit(:name)
    end 


end
