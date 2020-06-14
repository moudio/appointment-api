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
  image: 'https://lh3.googleusercontent.com/proxy/EtGzR-23NLNaJ34mn8Ut4VVZS_rW7kpiVsaEsSKWH8RzJSE0Tdthi4RTuz6Y29nJCild5t1ff3vvR1shVKmPmHEIrJAYAPnor0FX3P7mR_LcmOarOgHgnkIqe_L0jn0xP6o',
  description: 'Range Rover Velar Description',
  alt: 'velar'
  }, 

  {
      model: 'Range Rover Evoque', 
      image: 'https://wallsdesk.com/wp-content/uploads/2016/04/Range-Rover-Evoque-2017-Images.jpg', 
      description: 'Range Rover Evoque Description',
      alt: 'evoque'
  },
{
      model: 'Range Rover Sport', 
      image: 'http://wp2.carwallpapers.cc/land-rover/range-rover-sport/2018-shadow-edition/Range-Rover-Sport-Shadow-Edition-2018-3840x2160-002.jpg', 
      description: 'Range Rover Sport Description', 
      alt: 'sport'
  },
  {
    model: 'Discovery', 
    image: "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/land-rover-discovery-rear-cornering.jpg?itok=P_AzRJO2", 
    description: 'The most versatile SUV on the market', 
    alt: 'discovery'
  }
]
)
