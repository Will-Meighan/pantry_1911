class CookBook

  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def summary
    @recipes.reduce({}) do |acc, recipe|
      acc[:name] ||= acc[:name] = recipe.name
      acc[:details] = { :ingredients => [ { :ingredient =>  0 } ] }
      acc
      require "pry"; binding.pry
    end
  end

end
