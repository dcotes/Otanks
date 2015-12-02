class WelcomeController < ApplicationController
  before_filter :authorize
  
  def index
    @patients= Patient.all
  end
end
