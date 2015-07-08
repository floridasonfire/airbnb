class PropertiesController < ApplicationController

  def new
    @property = Property.new
  end

  def create
    @user = current_user
    @property = @user.properties.new(property_params)
    if @property.save
      flash[:notice] = "Your property has been added."
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private
  def property_params
    params.require(:property).permit(:address, :avatar, :price, :details)
  end

end
