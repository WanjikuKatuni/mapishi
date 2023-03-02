class RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :edit, :update, :destroy]
    
    # index method/action
    def index
        @recipe = Recipe.all.order("created_At DESC")

        
    end

    #show recipes
    def show
        require 'net/http'
        require 'json'
        # get drink
        @url = 'https://www.thecocktaildb.com/api/json/v1/1/random.php'
        @uri = URI(@url)
        @response = Net::HTTP.get(@uri)
        @output = JSON.parse(@response)
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
        if @recipe.update(recipe_params)
            redirect_to @recipe
        else
            render 'edit'
        end
    end

    def destroy
        @recipe.destroy
        redirect_to root_path, notice: "Successfully deleted recipe"
    end

    private

    def recipe_params
        params.require(:recipe).permit(:title, :description, :image, ingredients_attributes: [:id, :name, :_destroy], directions_attributes: [:id, :step, :_destroy])
    end

    # find recipes
    def find_recipe
        @recipe = Recipe.find(params[:id])
    end
end
