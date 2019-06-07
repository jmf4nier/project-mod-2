class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :year
      t.text :make
      t.text :model
      t.text :color 
      t.integer :horsepower
      t.integer :mileage
      t.integer :fuel_econ_mpg
    end
  end
end
