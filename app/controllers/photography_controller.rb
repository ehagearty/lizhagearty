class PhotographyController < ApplicationController
  def index
  	@folder = params[:folder]
  	@flickr_images = ['https://c1.staticflickr.com/1/634/22512346495_6f8ac4478f_h.jpg']
  	if (@folder == "self-portraits")
  		@flickr_images = ['https://c2.staticflickr.com/6/5788/23524107370_c3c2026568_b.jpg', 'https://c1.staticflickr.com/1/729/23751474711_8f8862098f_k.jpg', 'https://c1.staticflickr.com/1/634/23208495613_edc991b72e_h.jpg']
  	elsif @folder == "travel"
  		@flickr_images = ['https://c2.staticflickr.com/2/1639/24397839841_9f60de6455_h.jpg', 'https://c2.staticflickr.com/2/1708/23760596943_30e425c6d4_h.jpg']
  	elsif @folder == "events"
  		@flickr_images = ['https://c1.staticflickr.com/9/8118/10202712756_2e342d0e63_h.jpg']
  	end
  	@images = Dir.glob("app/assets/images/#{@folder}/*.jpg")
  end
end
