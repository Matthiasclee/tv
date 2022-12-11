require 'celadonremote'

module Remote
  def self.keypresses
    r = CeladonRemote::Receiver.new ENV["receiver_port"]
    yield(r)
    r.start_listener(allow_hold: true)
  end
end
