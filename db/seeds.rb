# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cocktails_attributes = [
  {
    name:         'Something 1'
  },
  {
    name:         'Something 2'
  }
]
Cocktail.create!(cocktails_attributes)

ingredients_attributes = [
  {
    name:         'Something 1'
  },
  {
    name:         'Something 2'
  }
]

Ingredient.create!(ingredients_attributes)


dose_attributes = [
  {
    description:    'description 1',
    cocktail: Cocktail.first,
    ingredient: Ingredient.first
  },
  {
    description:    'description 2',
    cocktail: Cocktail.second,
    ingredient: Ingredient.second
  }
]

Dose.create!(dose_attributes)
