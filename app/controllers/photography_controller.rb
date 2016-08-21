class PhotographyController < ApplicationController
  def index
  	@images = Dir.glob("app/assets/images/*.jpg")
  end
end
