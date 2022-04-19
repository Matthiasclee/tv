require_relative 'remote.rb'
require_relative 'webnav.rb'

cmode = :normal
cvol = 345
`osascript -e 'tell application "Finder" to set volume #{cvol.to_f/100}'`
Remote.keypresses do |r|
  r.oncode '00' do |h|
    if h == 0
      WebNav.go_to :youtube
    end
  end

  r.oncode '01' do |h|
    if h == 0
      cmode_a = :kbrd if cmode == :normal
      cmode_a = :normal if cmode == :kbrd
      cmode = cmode_a
    end
  end

  r.oncode '03' do |h|
    if h != 1
      if cvol + 20 < 690
        cvol = cvol + 20
        `osascript -e 'tell application "Finder" to set volume #{cvol.to_f/100}'`
      end
    end
  end

  r.oncode '04' do |h|
    if h != 1
      if cvol - 20 > 1
        cvol = cvol - 20
        `osascript -e 'tell application "Finder" to set volume #{cvol.to_f/100}'`
      end
    end
  end

  r.oncode '05' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys '1' if h != 1
    end
  end

  r.oncode '06' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys '2' if h != 1
    end
  end

  r.oncode '0C' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys '3' if h != 1
    end
  end

  r.oncode '10' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys '4' if h != 1
    end
  end

  r.oncode '14' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys '5' if h != 1
    end
  end

  r.oncode '18' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys '6' if h != 1
    end
  end

  r.oncode '44' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys '9' if h != 1
    end
  end

  r.oncode '48' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys '0' if h != 1
    end
  end

  r.oncode '4C' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys :backspace if h != 1
    end
  end

  r.oncode '07' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'q' if h != 1
    end
  end

  r.oncode '08' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'w' if h != 1
    end
  end

  r.oncode '0B' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'e' if h != 1
    end
  end

  r.oncode '0F' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'r' if h != 1
    end
  end

  r.oncode '13' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 't' if h != 1
    end
  end

  r.oncode '43' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'o' if h != 1
    end
  end

  r.oncode '47' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'p' if h != 1
    end
  end

  r.oncode '4B' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys :enter if h != 1
    end
  end

  r.oncode '0A' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'a' if h != 1
    end
  end

  r.oncode '0E' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 's' if h != 1
    end
  end

  r.oncode '12' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'd' if h != 1
    end
  end

  r.oncode '16' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'f' if h != 1
    end
  end

  r.oncode '42' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'j' if h != 1
    end
  end

  r.oncode '46' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'k' if h != 1
    end
  end

  r.oncode '4A' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'l' if h != 1
    end
  end

  r.oncode '09' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'z' if h != 1
    end
  end

  r.oncode '0D' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'x' if h != 1
    end
  end

  r.oncode '11' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'c' if h != 1
    end
  end

  r.oncode '15' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys ' ' if h != 1
    end
  end

  r.oncode '19' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'v' if h != 1
    end
  end

  r.oncode '1D' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'b' if h != 1
    end
  end

  r.oncode '41' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'n' if h != 1
    end
  end

  r.oncode '45' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'm' if h != 1
    end
  end

  r.oncode '49' do |h|
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys '.' if h != 1
    end
  end

  r.oncode '17' do |h|
    if cmode == :normal
      DRIVER.find_element(tag_name: 'body').send_keys :up if h != 1
    end
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'y' if h != 1
    end
  end

  r.oncode '1A' do |h|
    if cmode == :normal
      DRIVER.find_element(tag_name: 'body').send_keys :left if h != 1
    end
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'g' if h != 1
    end
  end

  r.oncode '1C' do |h|
    if cmode == :normal
      DRIVER.find_element(tag_name: 'body').send_keys :right if h != 1
    end
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys '7' if h != 1
    end
  end

  r.oncode '1F' do |h|
    if cmode == :normal
      DRIVER.find_element(tag_name: 'body').send_keys :down if h != 1
    end
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'i' if h != 1
    end
  end

  r.oncode '1B' do |h|
    if cmode == :normal
      DRIVER.find_element(tag_name: 'body').send_keys :enter if h == 0
    end
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'u' if h != 1
    end
  end

  r.oncode '1E' do |h|
    if cmode == :normal
      DRIVER.find_element(tag_name: 'body').send_keys :escape if h == 0
    end
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys 'h' if h != 1
    end
  end

  r.oncode '40' do |h|
    if cmode == :normal
      DRIVER.execute_script("document.getElementsByTagName('body')[0].requestFullscreen()")
    end
    if cmode == :kbrd
      DRIVER.find_element(tag_name: 'body').send_keys '8' if h != 1
    end
  end
end
