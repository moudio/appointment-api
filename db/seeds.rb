# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.create([
  {
  model: 'Range Rover Velar',
  description: 'The most refined and capable SUV. Discover its stunning capabilities and design in detail.',
  alt: 'velar'
  }, 

  {
      model: 'Range Rover Evoque', 
      description: 'Introducing the new Range Rover Evoque Hybrid. A small and premium SUV for a stylish look.',
      alt: 'evoque'
  },
{
      model: 'Range Rover Sport', 
      description: 'Explore the powerful Range Rover Sport. The ultimate luxury SUV.', 
      alt: 'sport'
  },
  {
    model: 'Discovery', 
    description: 'The off road SUV that truly stand out. Discover our most versatile SUV on the market', 
    alt: 'discovery'
  }
]
)
