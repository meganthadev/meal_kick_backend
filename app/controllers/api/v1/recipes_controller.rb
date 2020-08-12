class Api::V1::RecipesController < ApplicationController

    def index 
        recipes = Recipe.all
        render json: recipes
    end 

    def create 
        recipe = Recipe.new(recipe_params)
        if recipe.save 
            render json: recipe, status: :accepted
        else  
            render json: {errors: recipe.errors.full_messages}, status: :unproccesible_entity
        end 
    end 

    private

    def recipe_params
        params.require(recipe).permit(:title, :ingredients, :instructions, :category_id)
    end 

end
