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
  alt: 'velar',
  speed: 220,
  acceleration: 6.7,
  height: 1.68,
  length: 4.797,
  width: 2.145

  },

  {
      model: 'Range Rover Evoque',
      description: 'Introducing the new Range Rover Evoque Hybrid. A small and premium SUV for a stylish look.',
      alt: 'evoque',
      speed: 201,
      acceleration: 10.5,
      height: 1.649,
      length: 4.371,
      width: 1.996

  },
{
      model: 'Range Rover Sport',
      description: 'Explore the powerful Range Rover Sport. The ultimate luxury SUV.',
      alt: 'sport',
      speed: 209,
      acceleration: 7.7,
      height: 1.803,
      length: 4.879,
      width: 2.073

  },
  {
    model: 'Discovery',
    description: 'The off road SUV that truly stand out. Discover our most versatile SUV on the market',
    alt: 'discovery',
    speed: 207,
    acceleration: 8.7,
    height: 1.909,
    length: 4.956,
    width: 2.073

  }
]
)
