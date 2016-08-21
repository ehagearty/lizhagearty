class PhotographyController < ApplicationController
  def index
  	@folder = params[:folder]
  	@images = Dir.glob("app/assets/images/#{@folder}/*.jpg")
  end
end
