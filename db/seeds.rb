# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts 'Creating...'

cocktails_attributes = [
  {
    name:         'Something 1'
  },
  {
    name:         'Something 2'
  },
  {
    name:         'Something 3'
  },
  {
    name:         'Something 4'
  }
]
Cocktail.create!(cocktails_attributes)

ingredients_attributes = [
  {
    name:         'Something 1'
  },
  {
    name:         'Something 2'
  },
  {
    name:         'Something 3'
  },
  {
    name:         'Something 4'
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
  },
  {
    description:    'description 3',
    cocktail: Cocktail.third,
    ingredient: Ingredient.first
  },
  {
    description:    'description 4',
    cocktail: Cocktail.fourth,
    ingredient: Ingredient.second
  }
]

Dose.create!(dose_attributes)

puts 'Finished!'
