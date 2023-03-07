# MAPISHI

his is a recipe app made in Ruby on Rails. It allows users to add new recipes,  browse through a collection of recipes, and edit or delete existing ones.



* Installation
    To install the app, follow these steps:

    Clone the repository to your local machine.
    Install the required gems by running 'bundle install'.
    Start the app by running 'rails server'.



* Usage
    Once the app is running, you can access it by visiting "http://localhost:3000" in your webbrowser
    

* Homepage and Adding a Recipe
    The landing page displays a landing page of mapishi, which has the option of adding a recipe.
    To add a new recipe, click on the "Add Recipe" button on the home page. Fill in the details of the recipe (example data to fill in is included in app/assets/data/exampledata and the images can be uploaded from app/assets/images), including its name, ingredients, and instructions. Then click "Create Recipe" to save the recipe to the database. Once a recipe is added, it is displayed here
    The recipe can then be clicked and viewed, here, one will see the details of the recipe together with a drink that goes with the recipe. The drinks are integrated through the CocktailsDB API

* Editing a recipe
    To edit an existing recipe, click on the recipe to view its details. Then click on the "Edit" button to modify the recipe's details. Once you're done making changes, click "Update Recipe" to save the changes to the database.

* Deleting a recipe
    To delete a recipe, click on the recipe to view its details. Then click on the "Delete" button to remove the recipe from the database.

* Contributing
    If you'd like to contribute to this app, feel free to fork the repository and submit a pull request.


