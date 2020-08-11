# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

breakfast = Category.create(name: "Breakfast")
lunch = Category.create(name: "Lunch")
snacks = Category.create(name: "Snacks")
dinner = Category.create(name: "Dinner")
dessert = Category.create(name: "Desssert")
drinks = Category.create(name: "Drinks")


Recipe.create(title: "Brioche French Toast", ingredients: "Brioche Bread, Eggs, Milk, Cinnamon, Vanilla, Sugar, Syrup", instructions: "How to make this:
1. Whisk together the eggs & egg yolk with the sugar, vanilla extract, cream, cinnamon, and a tiny pinch of salt
2. Place a butter in a pan over medium-low heat, soak the bread for about 2 sec then flip it and soak for another 2 sec
3. Place the soaked bread on the pan, cook for about 2 min, flip and cook for another 2 min, sprinkle with some sugar, then repeat and cook each side for another 2 min, the total cook time should be around 8 to 10 min over medium-low heat
4.  Serve it with powdered sugar, syrup or some fresh fruits", category_id: breakfast.id)