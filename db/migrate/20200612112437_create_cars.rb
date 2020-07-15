# frozen_string_literal: true

class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :description
      t.string :alt
      t.string :speed
      t.string :acceleration
      t.string :height
      t.string :length
      t.string :width
      t.timestamps
    end
  end
end
