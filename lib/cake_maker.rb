class CakeMaker
  def maximum(recipes, ingredients)
    maximum_cakes_per_recipe = []
    recipes.each do |recipe|
      current_maximum_cake_number = Float::INFINITY
      recipe.keys.each do |r|
        return 0 if not ingredients.has_key?(r)
        current_maximum_cake_number = (ingredients[r]/recipe[r]) if current_maximum_cake_number > ingredients[r]/recipe[r]
      end
      maximum_cakes_per_recipe << current_maximum_cake_number
    end
    maximum_cakes_per_recipe.max
  end
end
