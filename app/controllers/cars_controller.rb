# user interaction or loads on the page
class CarsController < ApplicationController

  def index
  end

  def create
    @car = Car.new(params[:make],params[:year].to_i,params[:color])
    session[:car] = @car.to_yaml
  end

  def accelerate
    # storing the car object in a session, and then in a YAML object
    @car = YAML.load(session[:car])
    @car.accelerate
    # parsing car object so DOM can read it
    session[:car] = @car.to_yaml
    # does not change the page except for speed
    render 'create.html.erb'
  end

  def brake
    @car = YAML.load(session[:car])
    @car.brake
    session[:car] = @car.to_yaml
    render 'create.html.erb'
  end
  # links to the lights_switch function inside car
  def lights_switch
    @car = YAML.load(session[:car])
    # runs the function inside the class car
    @car.lights_switch
    session[:car] = @car.to_yaml
    render 'create.html.erb'
  end

  def parking_brake
    @car = YAML.load(session[:car])
    if @car.speed == 0
      @car.parking_brake = params[:parking_brake]
      session[:car] = @car.to_yaml
      render 'create.html.erb'
    else
      flash[:alert] = "Sorry but you cannot set the parking brake when you are moving"
      redirect_to :back
    end
  end
end
