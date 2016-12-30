class PhotographyController < ApplicationController
  def index
  	@folder = params[:folder]
  	@flickr_images = [
      'https://c2.staticflickr.com/6/5772/30292350281_26c2fe6b2c_b.jpg', # Sarah Healy
      'https://c1.staticflickr.com/9/8245/8517681452_ab479a4d5b_b.jpg',
      'https://c1.staticflickr.com/1/634/22512346495_6f8ac4478f_h.jpg',
      'https://c2.staticflickr.com/8/7048/6849608987_97da98bd82_b.jpg', # Lamp orange
      'https://c1.staticflickr.com/7/6220/6366309663_10f45b0f51_b.jpg' # Madison sunset camera
    ]
  	if (@folder == "self-portraits")
  		@flickr_images = [
        'https://c1.staticflickr.com/1/712/22014785975_f63d4c3091_h.jpg', #bridge boston
        'https://c2.staticflickr.com/6/5788/23524107370_c3c2026568_h.jpg', #pink hair, day I graduated
        'https://c1.staticflickr.com/1/630/23069876259_9a71c8e8a5_h.jpg', #berkeley apartment sweater
        'https://c1.staticflickr.com/1/634/23208495613_edc991b72e_h.jpg', #black and white 2 photos
        'https://c2.staticflickr.com/6/5721/21181381214_0e059327ef_b.jpg', # Thailand (first time)
        'https://c1.staticflickr.com/9/8367/8593744615_ab0b88287f_b.jpg',
        'https://c2.staticflickr.com/6/5648/21843754498_f6ac873341_b.jpg', #bathroom boston
        'https://c2.staticflickr.com/4/3838/14518066239_a2340075e8_b.jpg'
      ]
  	elsif @folder == "travel"
  		@flickr_images = [
        'https://c2.staticflickr.com/2/1639/24397839841_9f60de6455_h.jpg', # Hanoi street
        'https://c2.staticflickr.com/2/1656/24091585420_6e4e35c63c_b.jpg', #taipei garden
        'https://c2.staticflickr.com/6/5669/21944494684_868a513aeb_b.jpg', #Sam smile
        'https://c2.staticflickr.com/2/1501/24061295589_481c998834_b.jpg', # ha long bay
        'https://c1.staticflickr.com/1/738/21573534398_6ffccf56fa_b.jpg' # Gandy sunglasses
      ]
  	elsif @folder == "festivals"
  		@flickr_images = [
        'https://c1.staticflickr.com/1/690/31601694610_4969b19cd5_b.jpg', # Alina Baraz
        'https://c1.staticflickr.com/1/349/31975270465_27e0bcec4d_b.jpg', #LIB sunset
        'https://c1.staticflickr.com/1/316/31975271085_07764ecc13_b.jpg', #paris sinclair
        'https://c1.staticflickr.com/1/416/31827258512_5c5b681715_b.jpg', #austin
        'https://c1.staticflickr.com/9/8118/10202712756_2e342d0e63_h.jpg',
      ]
  	elsif @folder == "greek"
  		@flickr_images = [
        'https://c1.staticflickr.com/9/8111/28595658154_d2ef2c8b58_h.jpg',
        'https://c1.staticflickr.com/9/8259/28595660044_a7cd5c3dd5_h.jpg',
        'https://c1.staticflickr.com/9/8347/28595662024_a6637bbaa7_h.jpg',
        'https://c1.staticflickr.com/9/8355/28595663524_2285e8702e_h.jpg',
        'https://c1.staticflickr.com/9/8144/29139955041_c0ab3fd2fd_h.jpg'
      ]
  	elsif @folder == "grad"
      @flickr_images = [
        'https://c2.staticflickr.com/8/7505/29577488176_2c433e4de2_k.jpg',
        'https://c1.staticflickr.com/9/8544/29612064875_35d13cdde0_h.jpg'
      ]
    elsif @folder == "surrealism"
      @flickr_images = [
        'https://c2.staticflickr.com/6/5349/8982766922_44ed447589_b.jpg',
        'https://c1.staticflickr.com/9/8081/8386980844_a7df23ac91_b.jpg',
        'https://c1.staticflickr.com/9/8238/8375697142_161e896c02_b.jpg'
      ]
    end
  	@images = Dir.glob("app/assets/images/#{@folder}/*.jpg")
  end
end
