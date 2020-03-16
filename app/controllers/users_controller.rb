class UsersController < ApplicationController
  def index
    @user = User.where(role: "doctor") 
  end
  
end
