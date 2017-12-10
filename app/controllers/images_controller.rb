class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end
  
  def new
    @image = Image.new
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])

    if @image.update(image_params)
      redirect_to images_path
      flash[:notice] = "Artwork successfully updated!"
    else
      flash[:alert] = "Image was not updated. Please try again."
    end
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      flash[:notice] = "Artwork saved!"
      redirect_to images_path
    else
      redirect_to images_path
      flash[:alert] = "Not saved"
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    redirect_to images_path
    flash[:notice] = "Artwork Removed"
  end

  private

  def image_params
    params.require(:image).permit(:image, :title, :date)
  end

end
