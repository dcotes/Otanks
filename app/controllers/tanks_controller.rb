class TanksController < ApplicationController

  before_filter :authorize

  def index
    puts "tanks.index"
    @tanks = Tank.all
  end

  def new
    puts "tanks_controller.create_tank"
    @tank = Tank.new
  end

    def create 
    @tank = Tank.new(tank_params) 
    if @tank.save 
      redirect_to '/tanks' 
    else 
      render 'new' 
    end 
  end
  
  private 
  def tank_params 
    params.require(:tank).permit(:serial_number) 
  end
  
  def update 
  end

  def destroy
    puts "tanks_controller.delete_tank"
  end



end
