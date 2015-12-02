class VisitsController < ApplicationController

  def new
    puts "tanks_controller.create_tank"
    @visit = Visit.new
  end

  def create
  end

  def update 
  end

  def destroy
    puts "tanks_controller.delete_tank"
  end

  def index
    puts "tanks.index"
    @visits = Visit.all
  end
end
