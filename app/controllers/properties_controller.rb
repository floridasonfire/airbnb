class PropertiesController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @property = Property.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
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

  def edit
    @user = User.find(params[:user_id])
    @property = Property.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @property = Property.find(params[:id])
    if @property.update(property_params)
      flash[:notice] = "Your property has been updated."
      redirect_to user_property_path(@user, @property)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @property = Property.find(params[:id])
    @property.destroy
    redirect_to user_path(@user)
  end

  private
  def property_params
    params.require(:property).permit(:address, :avatar, :price, :details)
  end

end
