class RecipesController < ApplicationController
    # index method/action
    def index
    end

    #show recipes
    def show
    end

    #new recipes
    def new
    end

    #create recipes
    def create
    end

    private

    # find recipes
    def find_recipe
        @recipe = Recipe.find(params[:id])
    end
end