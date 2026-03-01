`amixer sset Master 50%`

def display_volume
  volume = `amixer get Master | awk -F'[][]' '/%/ {print $2; exit}'`.chomp.to_i
  toggle = `amixer get Master | awk -F'[][]' '/%/ {print $4; exit}'`.chomp

  level = "medium"

  if volume > 70
    level = "high"
  elsif toggle == "off" || volume == 0
    level = "muted"
  elsif volume < 30
    level = "low"
  end

  `gdbus call --session --dest org.Cinnamon --object-path /org/Cinnamon --method org.Cinnamon.ShowOSD "{'icon': <'audio-volume-#{level}-symbolic'>, 'level': <int32 #{volume}>}"`
end

Remote.oncode 'sh15A8' do
  `amixer set Master on`
  `amixer sset Master 2%+`

  display_volume
end

Remote.oncode 'sh15AA' do
  `amixer set Master on`
  `amixer sset Master 2%-`

  display_volume
end

Remote.oncode 'sh15A9' do
  `amixer set Master toggle`

  display_volume
end

Remote.oncode 'sh15A4' do |h|
  DRIVER.find_element(tag_name: 'body').send_keys :enter
end

Remote.oncode 'sh15A7' do |h|
  DRIVER.find_element(tag_name: 'body').send_keys :escape
end

Remote.oncode 'sh15A2' do
  DRIVER.find_element(tag_name: 'body').send_keys :up
end

Remote.oncode 'sh15A6' do
  DRIVER.find_element(tag_name: 'body').send_keys :down
end

Remote.oncode 'sh15A3' do
  DRIVER.find_element(tag_name: 'body').send_keys :left
end

Remote.oncode 'sh15A5' do
  DRIVER.find_element(tag_name: 'body').send_keys :right
end

Remote.oncode 'sh15A1' do
  WebNav.go_to :youtube
end
