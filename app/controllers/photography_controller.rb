class PhotographyController < ApplicationController
  def index
  	@folder = params[:folder]
  	@flickr_images = ['https://c1.staticflickr.com/9/8245/8517681452_ab479a4d5b_b.jpg', 'https://c1.staticflickr.com/1/634/22512346495_6f8ac4478f_h.jpg']
  	if (@folder == "self-portraits")
  		@flickr_images = ['https://c1.staticflickr.com/9/8238/8375697142_161e896c02_b.jpg', 'https://c2.staticflickr.com/6/5788/23524107370_c3c2026568_b.jpg', 'https://c1.staticflickr.com/1/634/23208495613_edc991b72e_h.jpg', 'https://c1.staticflickr.com/9/8367/8593744615_ab0b88287f_b.jpg','https://c2.staticflickr.com/4/3838/14518066239_a2340075e8_b.jpg']
  	elsif @folder == "travel"
  		@flickr_images = ['https://c2.staticflickr.com/2/1639/24397839841_9f60de6455_h.jpg', 'https://c2.staticflickr.com/6/5669/21944494684_868a513aeb_b.jpg']
  	elsif @folder == "festivals"
  		@flickr_images = ['https://c1.staticflickr.com/9/8118/10202712756_2e342d0e63_h.jpg']
  	elsif @folder == "greek"
  		@flickr_images = ['https://c1.staticflickr.com/9/8111/28595658154_d2ef2c8b58_h.jpg', 'https://c1.staticflickr.com/9/8259/28595660044_a7cd5c3dd5_h.jpg', 'https://c1.staticflickr.com/9/8347/28595662024_a6637bbaa7_h.jpg', 'https://c1.staticflickr.com/9/8355/28595663524_2285e8702e_h.jpg', 'https://c1.staticflickr.com/9/8144/29139955041_c0ab3fd2fd_h.jpg']
  	elsif @folder == "grad"
      @flickr_images = ['https://c2.staticflickr.com/8/7505/29577488176_2c433e4de2_k.jpg', 'https://c1.staticflickr.com/9/8544/29612064875_35d13cdde0_h.jpg']
    end
  	@images = Dir.glob("app/assets/images/#{@folder}/*.jpg")
  end
end
