require 'celadonremote'

module Remote
  def self.keypresses
    r = CeladonRemote::Receiver.new '/dev/tty.usbserial-A107IK35'
    yield(r)
    r.start_listener(allow_hold: true)
  end
end
