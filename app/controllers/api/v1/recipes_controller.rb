class Api::V1::RecipesController < ApplicationController

    def index 
        recipes = Recipe.all
        render json: RecipeSerializer.new(recipes)
    end 
 
    def create 
        recipe = Recipe.create(recipe_params)
        if recipe.save 
            render json: RecipeSerializer.new(recipe), status: :accepted
        else  
            render json: {errors: recipe.errors.full_messages}, status: :unproccesible_entity
        end 
    end
    
    def show 
        recipe = Recipe.find_by(params[:id])
        render json: RecipeSerializer(recipes)
    end 

    private

    def recipe_params
        params.require(:recipe).permit(:title, :ingredients, :instructions, :category_id, :image_url)
    end 

end
