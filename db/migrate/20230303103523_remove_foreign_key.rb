class RemoveForeignKey < ActiveRecord::Migration[7.0]
  def change
    #remove the old foreign key
    remove_foreign_key :ingredients, :recipes
    remove_foreign_key :directions, :recipes
  end
end
