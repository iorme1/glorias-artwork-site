class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
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
