class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :ingredients, :instructions, :category
end
