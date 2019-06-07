class CarsController < ApplicationController
    skip_before_action :verify_authenticity_token
def index 
    @cars = Car.all
    
end
def create 
    Car.create(car_params)
    redirect_to cars_path
end
def new 

end
def update
    @car = Car.all.find(params[:id])
    @car.update(car_params)
    redirect_to car_path
end
def edit 
    @car = Car.all.find(params[:id])
end 
def show 
    @car = Car.all.find(params[:id])
end
def destroy
    car = Car.all.find(params[:id])
    car.destroy
    redirect_to cars_path

end
def car_params
    params.permit([
            :year,
            :make,
            :model,
            :color,
            :horsepower,
            :mileage,
            :fuel_econ_mpg
        ]
    )
end

end