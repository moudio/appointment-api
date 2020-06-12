# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cars = Car.create([
  {
  model: 'Range Rover Velar',
  image: 'https://wallsdesk.com/wp-content/uploads/2017/03/Range-Rover-Velar-HD-Wallpaper.jpg',
  description: 'Range Rover Velar Description'
  }, 

  {
      model: 'Range Rover Evoque', 
      image: 'https://wallsdesk.com/wp-content/uploads/2016/04/Range-Rover-Evoque-2017-Images.jpg', 
      description: 'Range Rover Evoque Description'
  },
{
      model: 'Range Rover Sport', 
      image: 'http://wp2.carwallpapers.cc/land-rover/range-rover-sport/2018-shadow-edition/Range-Rover-Sport-Shadow-Edition-2018-3840x2160-002.jpg', 
      description: 'Range Rover Sport Description'
  }
]
)
