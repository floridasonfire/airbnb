class ImagesController <ApplicationController

  def new
    @property = Property.find(params[:property_id])
    @image = Image.new
  end

  def create
    @property = Property.find(params[:property_id])
    @user = User.find(@property.user_id)
    @image = @property.images.new(property_params)
    if @image.save
      flash[:notice] = "Image added to" + @property.address + "."
      redirect_to user_property_path(@user, @property)
    else
      render :new
    end
  end

  private
  def property_params
    params.require(:image).permit(:avatar, :caption)
  end
end
