class WelcomeController < ApplicationController
  def index
    @images = Image.all
    if @images[-5] && @images[-4] && @images[-3] && @images[-2] && @images[-1]
      @image_0 = @images[-5].image_url
      @image_1 = @images[-4].image_url
      @image_2 = @images[-3].image_url
      @image_3 = @images[-2].image_url
      @image_4 = @images[-1].image_url
    end
  end

  def show
  end
end
