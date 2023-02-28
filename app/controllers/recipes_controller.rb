class RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :edit, :update, :destroy]
    
    # index method/action
    def index
        @recipe = Recipe.all.order("created_At DESC")
    end

    #show recipes
    def show
    end

    #new recipes
    def new
        @recipe = Recipe.new
    end

    #create recipes
    def create
        @recipe = Recipe.new(recipe_params)

        if @recipe.save
            redirect_to @recipe, notice: "Successfully created new recipe"
        else
            render 'new'
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def recipe_params
        params.require(:recipe).permit(:title, :description)
    end

    # find recipes
    def find_recipe
        @recipe = Recipe.find(params[:id])
    end
end
