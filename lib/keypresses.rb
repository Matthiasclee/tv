require_relative 'remote.rb'
require_relative 'webnav.rb'

Remote.keypresses do |r|
  r.oncode '00' do |h|
    if h == 0
      WebNav.go_to :youtube
    end
  end

  r.oncode '03' do
    video = DRIVER.find_element(tag_name: 'video')

    vvol = (video.attribute('volume').to_f*10).to_i
    vvol = vvol + 1 if vvol != 10

    DRIVER.execute_script("document.getElementsByTagName('video')[0].volume = #{vvol.to_f/10}")
  end

  r.oncode '04' do
    video = DRIVER.find_element(tag_name: 'video')

    vvol = (video.attribute('volume').to_f*10).to_i
    vvol = vvol - 1 if vvol != 1

    DRIVER.execute_script("document.getElementsByTagName('video')[0].volume = #{vvol.to_f/10}")
  end

  r.oncode '17' do |h|
    DRIVER.find_element(tag_name: 'body').send_keys :up if h != 1
  end

  r.oncode '1A' do |h|
    DRIVER.find_element(tag_name: 'body').send_keys :left if h != 1
  end

  r.oncode '1C' do |h|
    DRIVER.find_element(tag_name: 'body').send_keys :right if h != 1
  end

  r.oncode '1F' do |h|
    DRIVER.find_element(tag_name: 'body').send_keys :down if h != 1
  end

  r.oncode '1B' do |h|
    DRIVER.find_element(tag_name: 'body').send_keys :enter if h == 0
  end
end
